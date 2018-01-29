USE blog;

SELECT posts.post_id, post_title, post_text, post_date, author_id, 
GROUP_CONCAT(posts_tags.tag_name ORDER BY posts_tags.post_id SEPARATOR ', ') AS tags 
FROM posts
LEFT JOIN posts_tags ON (posts.post_id = posts_tags.post_id)
GROUP BY posts.post_id;