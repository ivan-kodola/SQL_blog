USE blog;

SELECT authors.id, firstname, surname,
COUNT(posts.author_id) as count_posts
FROM authors
JOIN posts ON (authors.id = posts.author_id)
GROUP BY authors.id LIMIT 5;