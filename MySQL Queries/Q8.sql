SELECT 
	post_category,
    CONCAT('Q', QUARTER(date)) AS quarters,
    SUM(comments) AS total_comments,
    SUM(saves) AS total_saves
FROM fact_content
GROUP BY  quarters,post_category
ORDER BY quarters,post_category;
