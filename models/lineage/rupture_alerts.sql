with lineage as (
    select 1 from {{ source('insights_backoffice', 'rupture_alerts') }} where false
)
select * from lineage