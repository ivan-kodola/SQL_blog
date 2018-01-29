USE blog;

SELECT posts.post_id, post_title, post_text, post_date, author_id, tag_name
FROM posts 
LEFT JOIN posts_tags ON (posts.post_id = posts_tags.post_id) 
WHERE tag_name IS NULL 
GROUP BY posts.post_id;