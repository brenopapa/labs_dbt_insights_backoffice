with lineage as (
    select 1 from {{ source('insights_backoffice', 'matching_suggestions') }} where false
)
select * from lineage