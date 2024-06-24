select 
    date,
    ad_id,
    adset_id,
    campaign_id,
    channel,
    imps as impressions, 
    clicks,
    revenue,
    spend,
    conv as total_conversions
from {{ ref('src_ads_bing_all_data')}}