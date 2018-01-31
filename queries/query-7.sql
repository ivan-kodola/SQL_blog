USE blog;

SELECT tags.name, 
COUNT(posts_tags.tag_id) AS count_posts
FROM tags
LEFT JOIN posts_tags ON (tags.id = posts_tags.tag_id)
GROUP BY tags.name;