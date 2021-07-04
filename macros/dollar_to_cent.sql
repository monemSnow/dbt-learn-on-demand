{% macro dollar_to_cent(column_name, decimal_places=2) -%}

round({{column_name}}/100 , {{decimal_places}})

{%- endmacro %}