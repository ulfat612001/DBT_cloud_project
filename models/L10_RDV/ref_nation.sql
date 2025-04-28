SELECT n_nationkey as nationcode
     , n_regionkey as regioncode
     , ldts
     , rscr
     , n_name
     , n_comment
  FROM l00_stg.stg_nation