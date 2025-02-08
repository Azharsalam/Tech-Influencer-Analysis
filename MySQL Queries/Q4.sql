select
	monthname(date) as month_name,
    sum(profile_visits) as total_profile_visits,
    sum(new_followers) as total_new_followers
from fact_account
  group by month_name
