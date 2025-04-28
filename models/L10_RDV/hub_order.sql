SELECT sha1_hub_order,
       o_orderkey,
       ldts,
       rscr
FROM   l00_stg.ORDERS_STRM_TEMP 