{{ 
    config(
        materialized='view'
    ) 
}}
SELECT  *
FROM    {{ref('sat_customer')}}
QUALIFY LEAD(ldts) OVER (PARTITION BY sha1_hub_customer ORDER BY ldts) IS NULL