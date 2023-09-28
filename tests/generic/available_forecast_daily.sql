{% test available_forecast_daily(model) %}

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
    frequency = 'D' and max < DATETIME_ADD(CURRENT_DATETIME('America/Sao_Paulo'), INTERVAL 6 DAY)
)

select *
from validation_errors

{% endtest %}