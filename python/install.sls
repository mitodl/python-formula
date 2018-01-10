{% from "python/map.jinja" import python with context %}

python_build_dependencies:
  pkg.installed:
    - pkgs: {{ python.pkgs }}

{% for version in python.versions %}
install_global_python_version_{{ version }}:
  pyenv.installed:
    - name: {{ version }}
    - user: root
{% endfor %}
