SELECT
  user.user_id,
  user.name,
  post.post_id,
  post.content,
  post.posted_at,
  count(reaction.reaction_id) AS reactions_count
FROM
  user
  LEFT JOIN post ON post.posted_by = user.user_id
  LEFT JOIN reaction ON reaction.post_id = post.post_id
GROUP BY
  user.user_id,
  post.post_id
ORDER BY
  user.user_id ASC,
  post.post_id ASC;
