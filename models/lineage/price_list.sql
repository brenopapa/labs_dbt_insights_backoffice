with lineage as (
    select 1 from {{ source('protheus', 'sd1') }} where false
    union all
    select 1 from {{ source('protheus', 'sc3') }} where false
    union all
    select 1 from {{ source('protheus', 'sc7') }} where false
    union all
    select 1 from {{ source('protheus', 'sc8') }} where false
    union all
    select 1 from {{ source('protheus', 'aib') }} where false
    union all
    select 1 from {{ source('protheus', 'cna') }} where false
    union all
    select 1 from {{ source('protheus', 'cnb') }} where false
)
select * from lineage