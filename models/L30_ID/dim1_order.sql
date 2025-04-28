SELECT hub.sha1_hub_order AS dim_order_key,
       sat.ldts           AS effective_dts,
       hub.o_orderkey     AS order_id,
       sat.rscr           AS record_source,
       sat.*
FROM   l10_rdv.hub_order hub,
       l20_bdv.sat_order_bv_curr_vw sat
WHERE  hub.sha1_hub_order = sat.sha1_hub_order 