select 
post_type,
max(impressions) as highest_imp,
min(impressions) as lowest_imp
from fact_content
group by post_type
