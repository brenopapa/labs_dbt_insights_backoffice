with lineage as (
    select 1 from {{ source('insights_backoffice', 'view_demand') }} where false
    union all
    select 1 from {{ source('protheus', 'sc7') }} where false
    union all
    select 1 from {{ source('protheus', 'sd1') }} where false
    union all
    select 1 from {{ source('protheus', 'sf1') }} where false
    union all
    select 1 from {{ source('protheus', 'sb1') }} where false
    union all
    select 1 from {{ source('protheus', 'sx5') }} where false
    union all
    select 1 from {{ source('protheus', 'sc2') }} where false
    union all
    select 1 from {{ source('protheus', 'sd3') }} where false
    union all
    select 1 from {{ source('protheus', 'sf1') }} where false
    union all
    select 1 from {{ source('protheus', 'protheus_sharing') }} where false
)
select * from lineage