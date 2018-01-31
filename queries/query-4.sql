USE blog;

SELECT p.id, p.title, p.text, p.date, p.author_id, 
GROUP_CONCAT(t.name SEPARATOR ', ') AS tags
FROM tags t
LEFT JOIN posts_tags pt ON (pt.tag_id = t.id)
LEFT JOIN posts p ON (p.id = pt.post_id)
GROUP BY p.id;