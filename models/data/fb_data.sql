select 
    date,
    add_to_cart,
    clicks,
    comments,
    NULL as engagements,
    impressions,
    mobile_app_install as intalls,
    likes,
    NULL as link_clicks,
    NULL as post_click_conversions,
    NULL as post_view_conversions,
    NULL as posts,
    purchase,
    NULL as registrations,
    purchase_value as revenue,
    shares,
    spend,
    NULL as total_conversions,
    NULL as video_views,
    ad_id,
    adset_id,
    campaign_id,
    channel,
    creative_id,
    NULL as placement_id  
from {{ref('src_ads_creative_facebook_all_data')}}


