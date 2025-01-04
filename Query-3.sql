SELECT
  count() AS posts_count
FROM
  user
  INNER JOIN post ON user.user_id = post.posted_by
WHERE
  user.name = "James Williams"
ORDER BY
  post.posted_at DESC
LIMIT
  5;
