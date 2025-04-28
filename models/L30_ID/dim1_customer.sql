SELECT hub.sha1_hub_customer AS dim_customer_key,
       sat.ldts              AS effective_dts,
       hub.c_custkey         AS customer_id,
       sat.rscr              AS record_source,
       sat.*
FROM   l10_rdv.hub_customer hub,
       l20_bdv.sat_customer_bv_curr_vw sat
WHERE  hub.sha1_hub_customer = sat.sha1_hub_customer 