SELECT lnk.ldts              AS effective_dts,
       lnk.rscr              AS record_source,
       lnk.sha1_hub_customer AS dim_customer_key,
       lnk.sha1_hub_order    AS dim_order_key
FROM   {{ref('lnk_customer_order')}} lnk 