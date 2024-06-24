{{config(
    materialized='table'
        )   
}}

select 
    date,
    campaign_id,
    channel,
    clicks,
    comments,
    likes,
    impressions,
    spend,
    engagements,
    video_total_views as video_views
from {{ref('src_promoted_tweets_twitter_all_data')}}