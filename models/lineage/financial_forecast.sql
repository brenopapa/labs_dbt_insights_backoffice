with lineage as (
    select 1 from {{ source('insights_backoffice', 'financial_forecast') }} where false
    union all
    select 1 from {{ source('protheus', 'fk5') }} where false
)
select * from lineage