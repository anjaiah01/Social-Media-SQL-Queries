SELECT
  post.post_id,
  post.content,
  COALESCE(
    SUM(
      CASE
        WHEN reaction.reaction_type IN ('LIKE', 'LIT', 'WOW', 'LOVE') THEN 1
        ELSE 0
      END
    ),
    0
  ) AS positive_reactions_count,
  COALESCE(
    SUM(
      CASE
        WHEN reaction.reaction_type = 'DISLIKE' THEN 1
        ELSE 0
      END
    ),
    0
  ) AS negative_reactions_count
FROM
  post
  LEFT JOIN reaction ON post.post_id = reaction.post_id
GROUP BY
  post.post_id,
  post.content
ORDER BY
  post.post_id ASC;
