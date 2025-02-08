SELECT date,post_type,impressions,reach,shares,follows,likes
	FROM fact_content
 WHERE 
    MONTH(date) IN (3, 4) 
    AND DAYOFWEEK(date) IN (1, 7);
