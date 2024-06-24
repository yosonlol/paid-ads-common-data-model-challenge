{{config(
    materialized='table'
        )   
}}

select 
    date,
    add_to_cart,
    adset_id,
    campaign_id,
    channel,
    ad_id,
    clicks,
    comments,
    creative_id,
    likes,
    shares,
    impressions,
    mobile_app_install as intall,
    purchase,
    spend,
    purchase_value as revenue

from {{ref('src_ads_creative_facebook_all_data')}}