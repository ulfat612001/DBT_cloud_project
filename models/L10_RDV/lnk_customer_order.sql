SELECT sha1_lnk_customer_order,
       sha1_hub_customer,
       sha1_hub_order,
       ldts,
       rscr
FROM   l00_stg.orders_strm_temp 