with lineage as (
    select 1 from {{ source('protheus', 'sb2') }} where false
    union all
    select 1 from {{ source('protheus', 'sx5') }} where false
)
select * from lineage