USE blog;

SELECT * FROM posts WHERE post_date BETWEEN CURDATE() - INTERVAL 1 DAY AND CURDATE();