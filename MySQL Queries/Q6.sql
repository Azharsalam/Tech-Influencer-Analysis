SELECT 
    MONTHNAME(date) AS month_name,
    GROUP_CONCAT(DISTINCT post_category SEPARATOR ', ') AS post_category_names,
    COUNT(DISTINCT post_category) AS post_category_count
FROM fact_content
GROUP BY MONTH(date), MONTHNAME(date)
ORDER BY MONTH(date);
