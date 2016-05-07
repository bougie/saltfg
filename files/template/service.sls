{%- raw -%}
{% from "{{name}}/default.yml" import lookup, rawmap with context %}
{% set lookup = salt['grains.filter_by'](lookup, grain='os', merge=salt['pillar.get']('{{name}}:lookup')) %}
{% set rawmap = salt['pillar.get']('{{name}}', rawmap, merge=True) %}

{{name}}_service:
    service.running:
        - name: {{lookup.service}}
{%- endraw -%}
