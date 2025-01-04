SELECT
  post.post_id,
  post.content,
  COUNT(
    CASE
      WHEN reaction.reaction_type IN ("LIKE", "LIT", "WOW", "LOVE") THEN 1
      ELSE NULL
    END
  ) AS positive_reactions_count,
  COUNT(
    CASE
      WHEN reaction.reaction_type IN ("DISLIKE") THEN 1
      ELSE NULL
    END
  ) AS negative_reactions_count
FROM
  post
  LEFT JOIN reaction ON post.post_id = reaction.post_id
GROUP BY
  post.post_id
HAVING
  negative_reactions_count > positive_reactions_count
ORDER BY
  post.post_id ASC;
