USE blog;

SELECT id, title, text, date, author_id, tag_id
FROM posts 
LEFT JOIN posts_tags ON (posts.id = posts_tags.post_id) 
WHERE tag_id IS NULL
ORDER BY id;