USE blog;

SELECT a.id, a.firstname, a.surname,
COUNT(p.author_id) as count_posts
FROM authors a
JOIN posts p ON (a.id = p.author_id)
GROUP BY a.id LIMIT 5;