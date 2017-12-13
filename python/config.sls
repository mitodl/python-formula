{% from "python/map.jinja" import python with context %}

include:
  - .install
  - .service

python-config:
  file.managed:
    - name: {{ python.conf_file }}
    - source: salt://python/templates/conf.jinja
    - template: jinja
    - watch_in:
      - service: python_service_running
    - require:
      - pkg: python
