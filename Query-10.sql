SELECT
  comment_id,
  comment_content,
  commented_by,
  commented_at
FROM
  COMMENT
WHERE
  post_id = 5
ORDER BY
  commented_at ASC;
