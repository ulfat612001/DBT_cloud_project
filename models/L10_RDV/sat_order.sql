SELECT sha1_hub_order,
       ldts ,
       o_orderstatus,
       o_totalprice,
       o_orderdate,
       o_orderpriority,
       o_clerk,
       o_shippriority,
       o_comment,
       order_hash_diff as hash_diff,
       rscr
FROM   l00_stg.orders_strm_temp 