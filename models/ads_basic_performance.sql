select 
    channel,
    sum(total_conversions) as total_conversions,
    sum(spend) as spend
from {{ ref("union_data") }}
group by channel