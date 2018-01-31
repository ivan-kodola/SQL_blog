USE blog;

SELECT posts.id, posts.title, posts.text, posts.date, author_id, 
GROUP_CONCAT(tags.name SEPARATOR ', ') AS tags
FROM tags
LEFT JOIN posts_tags ON (tags.id = posts_tags.tag_id)
LEFT JOIN posts ON (posts_tags.post_id = posts.id)
GROUP BY posts.id;