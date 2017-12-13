{% from "python/map.jinja" import python with context %}

python_service_running:
  service.running:
    - name: {{ python.service }}
    - enable: True
