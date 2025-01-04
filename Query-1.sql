SELECT
  user.name,
  user.age,
  post.post_id,
  post.content,
  post.posted_at
FROM
  user
  INNER JOIN post ON user.user_id = post.posted_by
ORDER BY
  post.posted_at DESC;
