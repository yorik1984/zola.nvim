+++
# TOML frontmatter
title         = "List of blog posts"
sort_by       = "date"
template      = "blog.html"
page_template = "blog-page.html"
+++

### Markdown text

Markdown text

### Zola example

{% extends "base.html" %}
{% block content %}

<h1 class="title">
  {{ page.title }}
</h1>
<p class="subtitle"><strong>{{ page.date }}</strong></p>

{{ page.content | safe }}
{% endblock content %}

