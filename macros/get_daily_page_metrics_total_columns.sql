{% macro get_daily_page_metrics_total_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "date", "datatype": dbt_utils.type_timestamp()},
    {"name": "page_actions_post_reactions_anger_total", "datatype": dbt_utils.type_int()},
    {"name": "page_actions_post_reactions_haha_total", "datatype": dbt_utils.type_int()},
    {"name": "page_actions_post_reactions_like_total", "datatype": dbt_utils.type_int()},
    {"name": "page_actions_post_reactions_love_total", "datatype": dbt_utils.type_int()},
    {"name": "page_actions_post_reactions_sorry_total", "datatype": dbt_utils.type_int()},
    {"name": "page_actions_post_reactions_total", "datatype": dbt_utils.type_int()},
    {"name": "page_actions_post_reactions_wow_total", "datatype": dbt_utils.type_int()},
    {"name": "page_consumptions", "datatype": dbt_utils.type_int()},
    {"name": "page_content_activity", "datatype": dbt_utils.type_int()},
    {"name": "page_engaged_users", "datatype": dbt_utils.type_int()},
    {"name": "page_fan_adds", "datatype": dbt_utils.type_int()},
    {"name": "page_fan_removes", "datatype": dbt_utils.type_int()},
    {"name": "page_fans", "datatype": dbt_utils.type_int()},
    {"name": "page_fans_online_per_day", "datatype": dbt_utils.type_int()},
    {"name": "page_id", "datatype": dbt_utils.type_string()},
    {"name": "page_impressions", "datatype": dbt_utils.type_int()},
    {"name": "page_impressions_nonviral", "datatype": dbt_utils.type_int()},
    {"name": "page_impressions_organic", "datatype": dbt_utils.type_int()},
    {"name": "page_impressions_paid", "datatype": dbt_utils.type_int()},
    {"name": "page_impressions_viral", "datatype": dbt_utils.type_int()},
    {"name": "page_negative_feedback", "datatype": dbt_utils.type_int()},
    {"name": "page_places_checkin_mobile", "datatype": dbt_utils.type_int()},
    {"name": "page_places_checkin_total", "datatype": dbt_utils.type_int()},
    {"name": "page_post_engagements", "datatype": dbt_utils.type_int()},
    {"name": "page_posts_impressions", "datatype": dbt_utils.type_int()},
    {"name": "page_posts_impressions_nonviral", "datatype": dbt_utils.type_int()},
    {"name": "page_posts_impressions_organic", "datatype": dbt_utils.type_int()},
    {"name": "page_posts_impressions_paid", "datatype": dbt_utils.type_int()},
    {"name": "page_posts_impressions_viral", "datatype": dbt_utils.type_int()},
    {"name": "page_total_actions", "datatype": dbt_utils.type_int()},
    {"name": "page_video_complete_views_30_s", "datatype": dbt_utils.type_int()},
    {"name": "page_video_complete_views_30_s_autoplayed", "datatype": dbt_utils.type_int()},
    {"name": "page_video_complete_views_30_s_click_to_play", "datatype": dbt_utils.type_int()},
    {"name": "page_video_complete_views_30_s_organic", "datatype": dbt_utils.type_int()},
    {"name": "page_video_complete_views_30_s_paid", "datatype": dbt_utils.type_int()},
    {"name": "page_video_complete_views_30_s_repeat_views", "datatype": dbt_utils.type_int()},
    {"name": "page_video_repeat_views", "datatype": dbt_utils.type_int()},
    {"name": "page_video_view_time", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_10_s", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_10_s_autoplayed", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_10_s_click_to_play", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_10_s_organic", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_10_s_paid", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_10_s_repeat", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_autoplayed", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_click_to_play", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_organic", "datatype": dbt_utils.type_int()},
    {"name": "page_video_views_paid", "datatype": dbt_utils.type_int()},
    {"name": "page_views_external_referrals", "datatype": dbt_utils.type_int()},
    {"name": "page_views_logged_in_total", "datatype": dbt_utils.type_int()},
    {"name": "page_views_logout", "datatype": dbt_utils.type_int()},
    {"name": "page_views_total", "datatype": dbt_utils.type_int()}
] %}

{{ return(columns) }}

{% endmacro %}