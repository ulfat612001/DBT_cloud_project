{{config(incremental_strategy = 'merge', unique_key=['sha1_hub_order','hash_diff'])}}
SELECT sha1_hub_order,
       ldts ,
       o_orderstatus,
       o_totalprice,
       o_orderdate,
       o_orderpriority,
       o_clerk,
       o_shippriority,
       o_comment,
       order_hash_diff as hash_diff,
       rscr
FROM   L00_STG.STG_ORDER_STRM_OUTBOUND