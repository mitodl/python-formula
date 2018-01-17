{% from "python/map.jinja" import python with context %}

python_build_dependencies:
  pkg.installed:
    - pkgs: {{ python.pkgs }}

{% for version in python.versions %}
install_global_python_version_{{ version.number }}:
  pyenv.installed:
    - name: {{ version.number }}
    - default: {{ version.get('default', False) }}
    - user: {{ version.get('user', 'root') }}
{% endfor %}

prepend_pyenv_shims_to_default_path:
  file.append:
    - name: /etc/profile
    - text: PATH="/usr/local/pyenv/shims:$PATH"
