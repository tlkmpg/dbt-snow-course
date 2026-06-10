-- =============================================================================
-- macros/utils.sql
-- Utilitarian helper macros
-- =============================================================================

-- current_timestamp_utc
-- Converts timestamp to UTC time 
{% macro current_timestamp_utc() %}
    CONVERT_TIMEZONE('UTC', CURRENT_TIMESTAMP())
{% endmacro %}
