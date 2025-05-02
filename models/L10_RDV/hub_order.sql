SELECT sha1_hub_order,
       o_orderkey,
       ldts,
       rscr
FROM   L00_STG.ORDERS_STRM_TEMP 