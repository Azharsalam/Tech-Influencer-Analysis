SELECT 
    post_type,
    SUM(reach) AS total_reach,
    (SUM(reach) / (SELECT SUM(reach) FROM fact_content)) * 100 AS reach_percentage
FROM fact_content
GROUP BY post_type;
