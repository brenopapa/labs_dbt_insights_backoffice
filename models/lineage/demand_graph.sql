with lineage as (
    select 1 from {{ source('insights_backoffice', 'demand_forecasting') }} where false
    union all
    select 1 from {{ source('insights_backoffice', 'view_demand') }} where false
)
select * from lineage