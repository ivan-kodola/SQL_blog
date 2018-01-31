USE blog;

SELECT p.id, p.title, p.text, p.date, p.author_id, pt.tag_id
FROM posts p
LEFT JOIN posts_tags  pt ON (pt.post_id = p.id) 
WHERE tag_id IS NULL
ORDER BY p.id;