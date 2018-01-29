USE blog;

SELECT tags.tag_name, 
COUNT(posts_tags.tag_name)
FROM tags
LEFT JOIN posts_tags ON (tags.tag_name = posts_tags.tag_name)
GROUP BY tags.tag_name;