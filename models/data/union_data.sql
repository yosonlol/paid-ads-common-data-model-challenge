select * 
from  {{ref('bing_data')}}

UNION ALL

select * 
from  {{ref('fb_data')}}

UNION ALL

select * 
from  {{ref('tiktok_data')}}

UNION ALL

select * 
from  {{ref('twitter_data')}}