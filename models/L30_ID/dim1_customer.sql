SELECT hub.sha1_hub_customer AS dim_customer_key,
       sat.ldts              AS effective_dts,
       hub.c_custkey         AS customer_id,
       sat.rscr              AS record_source,
       sat.*
FROM   {{ref('hub_customer')}} hub,
       {{ref('sat_customer_bv_curr_vw')}} sat
WHERE  hub.sha1_hub_customer = sat.sha1_hub_customer 