{{config(incremental_strategy = 'merge', unique_key=['sha1_hub_customer','hash_diff'])}}
SELECT 
       sha1_hub_customer,
       ldts ,
       c_name,
       c_address,
       c_phone,
       c_acctbal,
       c_mktsegment,
       c_comment,
       c_nationkey as nationcode,
       CUSTOMER_HASH_DIFF as hash_diff,
       rscr 
FROM  L00_STG.stg_customer_strm_outbound