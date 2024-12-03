{% macro detect_anomalies(relation, source, threshold = 0.95) %}
    ml.detect_anomalies(
        model {{ relation }},
        struct({{ threshold }} as contamination),
        (select * from {{ source }})
    )
{% endmacro %}
