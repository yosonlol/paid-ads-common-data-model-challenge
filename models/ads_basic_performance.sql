WITH agr_cbc AS (
    SELECT 
        channel,
        SUM(total_conversions) AS total_conversions,
        SUM(spend) AS spend
    FROM {{ ref("union_data") }}
    GROUP BY channel
),
agr_cbe AS (
    SELECT 
        channel,
        SUM(engagements) AS engagements,
        SUM(spend) AS spend
    FROM {{ ref("union_data") }}
    GROUP BY channel
),
sum_i AS (
    SELECT 
        channel,
        SUM(impressions) AS impressions
    FROM {{ ref("union_data") }}
    GROUP BY channel
),
agr_cpc AS (
    SELECT 
        channel,
        SUM(clicks) AS clicks,
        SUM(spend) AS spend
    FROM {{ ref("union_data") }}
    GROUP BY channel
)
SELECT
    cbc.channel,
    cbc.spend / cbc.total_conversions AS cbc,
    cbe.spend / cbe.engagements AS cbe,
    sum_i.impressions,
    cpc.spend / cpc.clicks as cpc
FROM
    agr_cbc cbc
JOIN
    agr_cbe cbe ON cbc.channel = cbe.channel
JOIN
    sum_i ON cbc.channel = sum_i.channel
JOIN
    agr_cpc cpc ON cbc.channel = cpc.channel    
