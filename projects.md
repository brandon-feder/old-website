---
layout: default
title: Brandon's Projects
not_post: true
---

# My Projects

{% for proj in site.projects reversed %}
{% if proj.categories contains "starred" %}
<i class="bi bi-star-fill post-star"></i><a href="{{ proj.url }}">{{proj.title}}</a>
{% endif %}
{% endfor %}

{% for proj in site.projects reversed %}
{% unless proj.categories contains "starred" %}
<a href="{{ proj.url }}">{{proj.title}}</a>
{% endunless %}
{% endfor %}