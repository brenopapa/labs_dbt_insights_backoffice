{% test is_valid_date(model, column_name) %}

with validation as (

    select 
        SAFE.PARSE_DATE({{ column_name }}, 'yyyyMMdd') as {{ column_name }}
    from {{ model }}
    where {{ column_name }} is not null

),

validation_errors as (

  select true
  from validation
  where 
    {{ column_name }} is null
)

select *
from validation_errors

{% endtest %}