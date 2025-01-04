SELECT
  post.post_id,
  post.content,
  post.posted_by,
  COUNT(reaction.reaction_id) AS positive_reactions_count
FROM
  post
  LEFT JOIN reaction ON post.post_id = reaction.post_id
  AND reaction.reaction_type IN ("LIKE", "LIT", "WOW", "LOVE")
GROUP BY
  post.post_id,
  post.content,
  post.posted_by
ORDER BY
  positive_reactions_count DESC,
  post.post_id ASC;
