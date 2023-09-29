with test as (
    select * from {{ source('insights_backoffice', 'se1') }}
)
select * from test