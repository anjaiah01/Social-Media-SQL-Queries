SELECT
  user.user_id,
  user.name AS user_name,
  count(post.post_id) AS posts_count
FROM
  user
  LEFT JOIN post ON user.user_id = post.posted_by
GROUP BY
  user.user_id
ORDER BY
  posts_count DESC,
  user.user_id ASC;
