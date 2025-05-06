{{config(incremental_strategy = 'merge', unique_key=['regioncode'])}}
SELECT r_regionkey as regioncode
     , ldts
     , rscr
     , r_name
     , r_comment
  FROM l00_stg.stg_region