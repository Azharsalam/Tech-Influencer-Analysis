WITH ranked_followers AS (
    SELECT
        monthname(date) AS month, 
        date,                              
        follows,                             
        ROW_NUMBER() OVER (
            PARTITION BY DATE_FORMAT(date, '%Y-%m') 
            ORDER BY follows DESC                 
        ) AS `rank`                            
    FROM
      fact_content
)
SELECT
    month,
    date,
    follows
FROM
    ranked_followers
WHERE
    `rank` <= 3 
ORDER BY
    month,      
    `rank`;     
