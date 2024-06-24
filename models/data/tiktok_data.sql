{{config(
    materialized='table'
        )   
}}

select 
    date,
    add_to_cart,
    campaign_id,
    channel,
    ad_id,
    clicks,
   
    impressions,
    rt_installs as intall,
    purchase,
    spend,

    conversions as total_conversions,
    video_views,
    registrations

from {{ref('src_ads_tiktok_ads_all_data')}}