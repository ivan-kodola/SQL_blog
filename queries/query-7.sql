USE blog;

SELECT t.name, 
COUNT(pt.tag_id) AS count_posts
FROM tags t
LEFT JOIN posts_tags pt ON (pt.tag_id = t.id)
GROUP BY t.name;