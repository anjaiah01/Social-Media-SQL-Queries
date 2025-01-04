  SELECT
  user.user_id,
  user.name,
  post.post_id,
  post.content,
  post.posted_at,
  count(COMMENT.comment_id) AS comments_count
FROM
  user
  LEFT JOIN post ON user.user_id = post.posted_by
  LEFT JOIN COMMENT ON post.post_id = COMMENT.post_id
GROUP BY
  user.user_id,
  post.post_id
ORDER BY
  user.user_id ASC,
  post.post_id ASC;
