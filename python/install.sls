{% from "python/map.jinja" import python with context %}

include:
  - .service

python:
  pkg.installed:
    - pkgs: {{ python.pkgs }}
    - require_in:
        - service: python_service_running
