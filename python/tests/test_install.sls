{% from "python/map.jinja" import python with context %}

{% for pkg in python.pkgs %}
test_{{pkg}}_is_installed:
  testinfra.package:
    - name: {{ pkg }}
    - is_installed: True
{% endfor %}
