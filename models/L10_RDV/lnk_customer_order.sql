SELECT sha1_lnk_customer_order,
       sha1_hub_customer,
       sha1_hub_order,
       ldts,
       rscr
FROM   L00_STG.ORDERS_STRM_TEMP