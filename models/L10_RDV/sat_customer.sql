SELECT 
       sha1_hub_customer,
       ldts ,
       c_name,
       c_address,
       c_phone,
       c_acctbal,
       c_mktsegment,
       c_comment,
       C_NATIONCODE as nationcode,
       CUSTOMER_HASH_DIFF as hash_diff,
       rscr 
FROM  L00_STG.stg_customer_strm_outbound