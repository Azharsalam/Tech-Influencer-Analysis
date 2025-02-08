SELECT
    MONTHNAME(date) AS month_name, 
    GROUP_CONCAT(DISTINCT post_category ORDER BY post_category) AS post_category_names, 
    COUNT(DISTINCT post_category) AS post_category_count 
FROM fact_content
GROUP BY 
    month_name -- Group by month name
ORDER BY 
    month_name; 
