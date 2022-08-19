---
layout: default
title: Brandon's Projects
not_post: true
---

# My Projects

<ul>
{% for proj in site.projects %}
{% if proj.categories contains "starred" %}
		<li><i class="bi bi-star-fill post-star"></i><a href="{{ proj.url }}">{{proj.title}}</a></li>
{% endif %}
{% endfor %}

{% for proj in site.projects %}
{% unless proj.categories contains "starred" %}
	<li><a href="{{ proj.url }}">{{proj.title}}</a></li>
{% endunless %}
{% endfor %}
</ul>
