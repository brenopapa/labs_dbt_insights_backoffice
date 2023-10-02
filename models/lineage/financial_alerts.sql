with lineage as (
    select 1 from {{ source('insights_backoffice', 'demand_forecasting') }} where false
)
select * from lineage