with lineage as (
    select 1 from {{ source('protheus', 'sc7') }} where false
    union all
    select 1 from {{ source('protheus', 'sb1') }} where false
    union all
    select 1 from {{ source('protheus', 'sc2') }} where false
    union all
    select 1 from {{ source('protheus', 'sd1') }} where false
    union all
    select 1 from {{ source('protheus', 'sf1') }} where false
    union all
    select 1 from {{ source('protheus', 'sx5') }} where false
    union all
    select 1 from {{ source('protheus', 'cnb') }} where false
    union all
    select 1 from {{ source('protheus', 'cn9') }} where false
    union all
    select 1 from {{ source('protheus', 'cns') }} where false
    union all
    select 1 from {{ source('protheus', 'cnf') }} where false
    union all
    select 1 from {{ source('protheus', 'protheus_sharing') }} where false
)
select * from lineage