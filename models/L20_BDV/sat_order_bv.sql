{{
    config(
        transient=False
    )
}}
SELECT sha1_hub_order,
       ldts,
       o_orderstatus,
       o_totalprice,
       o_orderdate,
       o_orderpriority,
       o_clerk,
       o_shippriority,
       o_comment,
       hash_diff,
       rscr,
       CASE
         WHEN o_orderpriority IN ( '2-HIGH', '1-URGENT' )
              AND o_totalprice >= 200000 THEN 'Tier-1'
         WHEN o_orderpriority IN ( '3-MEDIUM', '2-HIGH', '1-URGENT' )
              AND o_totalprice BETWEEN 150000 AND 200000 THEN 'Tier-2'
         ELSE 'Tier-3'
       END order_priority_bucket
FROM   {{ref('sat_order')}}