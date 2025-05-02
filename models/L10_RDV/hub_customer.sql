SELECT sha1_hub_customer,
       c_custkey,
       ldts ,
       rscr
FROM   L00_STG.stg_customer_strm_outbound 