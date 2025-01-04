# Social Networking Application Practice Set - SQL Joins

This repository contains a set of SQL join practice exercises for a social networking application. The practice set is designed to explore meaningful data from a sample database using various SQL join operations.

---

## Database Schema
The database contains the following tables:
- **user**: Stores user details.
- **post**: Stores posts made by users.
- **comment**: Stores comments on posts by users.
- **reaction**: Stores reactions to posts by users.

### Relationships:
- 1:n relationship between `user` and `comment`.
- 1:1 relationship between `user` and `reaction`.
- 1:n relationship between `post` and `comment`.

![image](https://github.com/user-attachments/assets/f202407a-fd40-4a4c-86f5-ae88d89ad6c2)

---

## Practice Questions
## 1. Fetch All Posts with User Details
Retrieve all posts along with user details. Sort the posts in descending order of the `posted_at` column.

### Expected Output Format:
| name         | age | post_id | content   | posted_at          |
|--------------|-----|---------|-----------|--------------------|
| ...          | ... | ...     | ...       | ...                |

---

## 2. Fetch the 5 Recent Posts by “James Williams”
Retrieve the 5 most recent posts by the user named “James Williams,” sorted by the `posted_at` column.

### Expected Output Format:
| name            | age | post_id | content   | posted_at          |
|-----------------|-----|---------|-----------|--------------------|
| ...             | ... | ...     | ...       | ...                |

---

## 3. Count Posts by “James Williams”
Get the total number of posts posted by “James Williams” to date.

### Expected Output Format:
| posts_count |
|-------------|
| ...         |

---

## 4. Count Posts for Every User
For every user, retrieve the total number of posts they have made so far. Include users with zero posts and sort the output in descending order of `posts_count` and ascending order of `user_id`.

### Expected Output Format:
| user_id | user_name      | posts_count |
|---------|----------------|-------------|
| ...     | ...            | ...         |

---

## 5. Users with at Least 2 Posts
Get details of users who have posted at least 2 posts. Sort by `posts_count` (descending) and `user_id` (ascending).

### Expected Output Format:
| user_id | user_name      | age | gender | posts_count |
|---------|----------------|-----|--------|-------------|
| ...     | ...            | ... | ...    | ...         |

---

## 6. Active Users in January 2021
Retrieve details of users who posted at least 2 posts in January 2021. Sort the results in descending order of `posts_count` and ascending order of `user_id`.

### Expected Output Format:
| user_id | user_name      | posts_count |
|---------|----------------|-------------|
| ...     | ...            | ...         |

---

## 7. Positive Reactions for Each Post
For each post, get the total number of positive reactions. Positive reactions include "LIKE," "LIT," "WOW," and "LOVE." Posts without positive reactions should show a count of 0.

### Expected Output Format:
| post_id | content    | posted_by | positive_reactions_count |
|---------|------------|-----------|---------------------------|
| ...     | ...        | ...       | ...                       |

---

## 8. Positive and Negative Reactions for Each Post
Retrieve the counts of positive and negative reactions for each post. Negative reactions include "DISLIKE." Posts without reactions should show 0 counts.

### Expected Output Format:
| post_id | content    | positive_reactions_count | negative_reactions_count |
|---------|------------|--------------------------|--------------------------|
| ...     | ...        | ...                      | ...                      |

---

## 9. Posts with More Negative than Positive Reactions
Get posts where negative reactions outnumber positive reactions.

### Expected Output Format:
| post_id | content    | positive_reactions_count | negative_reactions_count |
|---------|------------|--------------------------|--------------------------|
| ...     | ...        | ...                      | ...                      |

---

## 10. Comments for Post ID 5
Retrieve all comment details for the post with `post_id = 5`. Sort comments by `commented_at` (ascending).

### Expected Output Format:
| comment_id | comment_content | commented_by | commented_at      |
|------------|-----------------|--------------|-------------------|
| ...        | ...             | ...          | ...               |

---

## 11. Posts and Comments by User ID 98
Fetch all posts by the user with `user_id = 98` and their corresponding comments. Sort posts by `post_id` (ascending) and comments by `commented_at` (descending). If a post has no comments, display NULL values for comment details.

### Expected Output Format:
| post_id | posted_by | content    | posted_at          | comment_id | comment_content | commented_at      |
|---------|-----------|------------|--------------------|------------|-----------------|-------------------|
| ...     | ...       | ...        | ...                | ...        | ...             | ...               |

---

## 12. Posts and Comments Count by User ID 98
Retrieve all posts by `user_id = 98` and the total count of comments for each post. If no comments exist, show a count of 0.

### Expected Output Format:
| post_id | posted_by | content    | posted_at          | comments_count |
|---------|-----------|------------|--------------------|----------------|
| ...     | ...       | ...        | ...                | ...            |

---

## 13. User Posts and Comments Count
Retrieve all posts and the total count of comments for each post, along with user details. Include users without posts or posts without comments. Sort by `user_id` (ascending) and `post_id` (ascending).

### Expected Output Format:
| user_id | name          | post_id | content    | posted_at          | comments_count |
|---------|---------------|---------|------------|--------------------|----------------|
| ...     | ...           | ...     | ...        | ...                | ...            |

---

## 14. User Posts and Reactions Count
Retrieve all posts and the total count of reactions for each post, along with user details. Include users without posts or posts without reactions. Sort by `user_id` (ascending) and `post_id` (ascending).

### Expected Output Format:
| user_id | name          | post_id | content    | posted_at          | reactions_count |
|---------|---------------|---------|------------|--------------------|-----------------|
| ...     | ...           | ...     | ...        | ...                | ...             |
