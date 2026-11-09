{% test record_level_duplicates_specific_columns(model, columns) %}

SELECT
    {% for column in columns %}
        {{ column }},
    {% endfor %}

    COUNT(*) AS duplicate_count

FROM {{ model }}

GROUP BY
    {% for column in columns %}
        {{ column }}
        {% if not loop.last %}, {% endif %}
    {% endfor %}

HAVING COUNT(*) > 1

{% endtest %}