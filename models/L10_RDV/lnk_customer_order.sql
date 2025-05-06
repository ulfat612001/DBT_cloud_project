{{config(incremental_strategy = 'merge', unique_key=['sha1_lnk_customer_order'])}}
SELECT sha1_lnk_customer_order,
       sha1_hub_customer,
       sha1_hub_order,
       ldts,
       rscr
FROM   L00_STG.STG_ORDER_STRM_OUTBOUND