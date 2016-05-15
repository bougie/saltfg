{%- raw -%}
{% from "{{name}}/default.yml" import lookup, rawmap with context %}
{% set lookup = salt['grains.filter_by'](lookup, grain='os', merge=salt['pillar.get']('{{name}}:lookup')) %}
{% set rawmap = salt['pillar.get']('{{name}}', rawmap, merge=True) %}

{% if lookup.config_file is defined %}
{{name}}_config:
    file.managed:
        - name: {{lookup.config_file}}
        - source: salt://{{name}}/files/{{name}}.conf.j2
        - template: jinja
        - makedirs: True
        - context:
            config: {{rawmap}}
{% endif %}
{%- endraw -%}

