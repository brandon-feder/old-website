---
layout: default
title: Brandon's Projects

gradient_dir: "top right"
gradient_start: "#e80000"
gradient_end: "#00b5c8"

not_post: true
---

# My Projects

<div class="proj-col">
    <h3>Current Projects</h3>
    <ul>
    {% for post in site.posts %}
        {% if post.categories contains "current" %}
            <li><a href="{{ post.url }}">{{post.title}}</a></li>
        {% endif %}
    {% endfor %}
    </ul>
</div>

<div class="proj-col">
    <h3>All Projects</h3>
    <ul>
    {% for post in site.posts %}
        <li><a href="{{ post.url }}">{{post.title}}</a></li>
    {% endfor %}
    </ul>
</div>