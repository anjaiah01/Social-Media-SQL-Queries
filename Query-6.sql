SELECT
  user.user_id,
  user.name AS user_name,
  count(post.post_id) AS posts_count
FROM
  user
  LEFT JOIN post ON user.user_id = post.posted_by
WHERE
  CAST(strftime("%Y", post.posted_at) AS integer) = 2021
  AND strftime("%m", post.posted_at) = "01"
GROUP BY
  user.user_id
HAVING
  posts_count >= 2
ORDER BY
  posts_count DESC,
  user.user_id ASC;
