USE blog;

SELECT authors.author_id, firstname, surname,
COUNT(posts.author_id)
FROM authors
JOIN posts ON (authors.author_id = posts.author_id)
GROUP BY authors.author_id LIMIT 5;