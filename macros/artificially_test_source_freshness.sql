{% test artificially_test_source_freshness(model, field, datepart, interval) %}

{% set threshold = dbt_utils.dateadd(datepart, interval * -1, dbt_utils.current_timestamp()) %}

with recency as (

    select 
        source_relation, 
        max({{field}}) as most_recent
    from {{ model }}
    group by 1

)

select

    source_relation,
    most_recent,
    {{ threshold }} as threshold

from recency
where cast(most_recent as {{ dbt_utils.type_timestamp() }}) < cast({{ threshold }} as {{ dbt_utils.type_timestamp() }})

{% endtest %}