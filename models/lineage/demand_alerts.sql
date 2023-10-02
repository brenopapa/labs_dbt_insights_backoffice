with lineage as (
    select 1 from {{ source('insights_backoffice', 'demand_forecasting') }} where false
    union all
    select 1 from {{ source('insights_backoffice', 'view_demand') }} where false
    union all
    select 1 from {{ source('protheus', 'sb1') }} where false
    union all
    select 1 from {{ source('protheus', 'sa2') }} where false
    union all
    select 1 from {{ source('protheus', 'sbm') }} where false
    union all
    select 1 from {{ source('protheus', 'sx5') }} where false
    union all
    select 1 from {{ source('protheus', 'protheus_sharing') }} where false    
)
select * from lineage