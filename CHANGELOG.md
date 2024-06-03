# dbt_facebook_pages_source v0.3.0
[PR #11](https://github.com/fivetran/dbt_facebook_pages_source/pull/11) includes the following changes:

## 🚨 Breaking Changes 🚨:
- This change is made breaking since columns have been removed, stemming from the [Feb 2024](https://fivetran.com/docs/connectors/applications/facebook-pages/changelog#february2024) and [Apr 2024](https://fivetran.com/docs/connectors/applications/facebook-pages/changelog#april2024) Fivetran Facebook Pages connector updates. Adjust your downstream use cases accordingly. 
    - Columns removed from staging model `stg_facebook_pages__daily_page_metrics_total`:
        - `page_consumptions`
        - `page_content_activity`
        - `page_engaged_users`
        - `page_places_checkin_mobile`
        - `page_views_external_referrals`
        - `page_views_logged_in_total`
        - `page_views_logout`
    - Columns removed from staging model `stg_facebook_pages__lifetime_post_metrics_total`
        - `post_impressions_fan_paid`

## Under the Hood:
- Incorporated the new `fivetran_utils.drop_schemas_automation` macro into the end of each Buildkite integration test job.
- Updated the pull request templates.
- Included auto-releaser GitHub Actions workflow to automate future releases.

# dbt_facebook_pages_source v0.2.1

## Bug Fixes
[PR #7](https://github.com/fivetran/dbt_facebook_pages_source/pull/7) includes the following changes:
- Ensures `actions_post_reactions_total` is not null by falling back to summing the separate `page_actions_post_reactions_*_total` fields (resolves issue [#8](https://github.com/fivetran/dbt_facebook_pages/issues/8))

## Contributors
- [@zhyatt](https://github.com/zhyatt) ([PR #7](https://github.com/fivetran/dbt_facebook_pages_source/pull/7))

# dbt_facebook_pages_source v0.2.0

## 🚨 Breaking Changes 🚨:
[PR #5](https://github.com/fivetran/dbt_facebook_pages_source/pull/5) includes the following breaking changes:
- Dispatch update for dbt-utils to dbt-core cross-db macros migration. Specifically `{{ dbt_utils.<macro> }}` have been updated to `{{ dbt.<macro> }}` for the below macros:
    - `any_value`
    - `bool_or`
    - `cast_bool_to_text`
    - `concat`
    - `date_trunc`
    - `dateadd`
    - `datediff`
    - `escape_single_quotes`
    - `except`
    - `hash`
    - `intersect`
    - `last_day`
    - `length`
    - `listagg`
    - `position`
    - `replace`
    - `right`
    - `safe_cast`
    - `split_part`
    - `string_literal`
    - `type_bigint`
    - `type_float`
    - `type_int`
    - `type_numeric`
    - `type_string`
    - `type_timestamp`
    - `array_append`
    - `array_concat`
    - `array_construct`
- For `current_timestamp` and `current_timestamp_in_utc` macros, the dispatch AND the macro names have been updated to the below, respectively:
    - `dbt.current_timestamp_backcompat`
    - `dbt.current_timestamp_in_utc_backcompat`
- Dependencies on `fivetran/fivetran_utils` have been upgraded, previously `[">=0.3.0", "<0.4.0"]` now `[">=0.4.0", "<0.5.0"]`.

# dbt_facebook_pages_source v0.1.0

The original release! This package contains staging models, designed to work simultaneously with our [Facebook Pages modeling package](https://github.com/fivetran/dbt_facebook_pages) and our [Social Media Reporting package](https://github.com/fivetran/dbt_social_media_reporting). The staging models name columns consistently across all packages:
 * Boolean fields are prefixed with `is_` or `has_`
 * Timestamps are appended with `_timestamp`
 * ID primary keys are prefixed with the name of the table. For example, the post table's ID column is renamed `post_id`.
