{% test available_forecast_monthly(model) %}

with validation as (

    select 
        upper(frequency) as frequency, 
        max(final_reference_date) as max
    from {{ model }}
    group by upper(frequency)

),

validation_errors as (

  select true
  from validation
  where 
    frequency = 'M' and max < DATETIME_ADD(CURRENT_DATETIME('America/Sao_Paulo'), INTERVAL 2 MONTH)
)

select *
from validation_errors

{% endtest %}