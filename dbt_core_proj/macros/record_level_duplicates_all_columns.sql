{% test record_level_duplicates_all_columns(model) %}

SELECT
    *,
    COUNT(*) AS duplicate_count

FROM {{ model }}

GROUP BY ALL

HAVING COUNT(*) > 1

{% endtest %}