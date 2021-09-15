{% macro get_post_history_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "allowed_advertising_objects", "datatype": dbt_utils.type_string()},
    {"name": "created_time", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "is_eligible_for_promotion", "datatype": "boolean"},
    {"name": "is_hidden", "datatype": "boolean"},
    {"name": "is_instagram_eligible", "datatype": "boolean"},
    {"name": "is_published", "datatype": "boolean"},
    {"name": "message", "datatype": dbt_utils.type_string()},
    {"name": "page_id", "datatype": dbt_utils.type_string()},
    {"name": "parent_id", "datatype": dbt_utils.type_string()},
    {"name": "privacy_allow", "datatype": dbt_utils.type_string()},
    {"name": "privacy_deny", "datatype": dbt_utils.type_string()},
    {"name": "privacy_description", "datatype": dbt_utils.type_string()},
    {"name": "privacy_friends", "datatype": dbt_utils.type_string()},
    {"name": "privacy_value", "datatype": dbt_utils.type_string()},
    {"name": "promotable_id", "datatype": dbt_utils.type_string()},
    {"name": "share_count", "datatype": dbt_utils.type_int()},
    {"name": "status_type", "datatype": dbt_utils.type_string()},
    {"name": "updated_time", "datatype": dbt_utils.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
