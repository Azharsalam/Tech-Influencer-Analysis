SELECT
    post_type,
    SUM(reach) AS total_reach,
    ROUND((SUM(reach) * 100.0) / SUM(SUM(reach)) OVER (), 2) AS reach_percentage
FROM fact_content
GROUP BY post_type
ORDER BY reach_percentage DESC;
