WITH cte AS 
  (    SELECT 
        MONTHNAME(date) AS month,  
        post_category,
        SUM(likes) AS total_likes
    FROM fact_content
    WHERE MONTH(date) = 7  
    GROUP BY month, post_category  )
SELECT * 
FROM cte
ORDER BY total_likes DESC;
