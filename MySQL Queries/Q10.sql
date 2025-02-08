CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTotalSharesByPostType`(IN Week_no INT)
BEGIN
 SELECT
        post_type,            
        SUM(shares) AS total_shares 
    FROM
       fact_content
    WHERE
        WEEK(date, 1) = Week_no 
    GROUP BY
        post_type              
    ORDER BY
        total_shares DESC;    
END
