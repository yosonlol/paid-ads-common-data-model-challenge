select 
    date,
    NULL as add_to_cart,
    clicks,
    comments,
    engagements,
    impressions,
    NULL as installs,
    likes,
    NULL as link_clicks,
    NULL as post_click_conversions,
    NULL as post_view_conversions,
    NULL as posts,
    NULL as purchase,
    NULL as registrations,
    NULL as revenue,
    NULL as shares,
    spend,
    NULL as total_conversions,
    video_total_views as video_views,
    NULL as ad_id,
    NULL as adset_id,
    campaign_id,
    channel,
    NULL as creative_id,
    NULL as placement_id
 from {{ref('src_promoted_tweets_twitter_all_data')}}


