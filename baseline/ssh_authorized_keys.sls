{% for name, user in pillar.get('users', {}).items() if user.absent is not defined or not user.absent %}
user_{{ name }}_authorized_keys:
  file.managed:
    - name: {{ user.get('home', 'home/{0}'.format(name)) }}/.ssh/authorized_keys
    - source: https://github.com/{{ user.get('github_username', {}) }}.keys
    - mode: 0644
    - makedirs: True
    - replace: False
    - user: {{ name }}
    - group: {{ name }}
{% endfor %}
