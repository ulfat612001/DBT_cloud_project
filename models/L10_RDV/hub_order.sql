{{config(incremental_strategy = 'merge', unique_key=['sha1_hub_order'])}}
SELECT sha1_hub_order,
       o_orderkey,
       ldts,
       rscr
FROM   L00_STG.STG_ORDER_STRM_OUTBOUND