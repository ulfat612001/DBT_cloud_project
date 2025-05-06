SELECT  *
FROM    {{ref('sat_order_bv')}}
QUALIFY LEAD(ldts) OVER (PARTITION BY sha1_hub_order ORDER BY ldts) IS NULL