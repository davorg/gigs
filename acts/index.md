---
layout: default
title: All Acts
permalink: /acts/
nav_exclude: true
---

<ul>
{% assign acts = site.tags | sort %}
{% for pair in acts %}
  {% assign name  = pair[0] %}
  {% assign posts = pair[1] %}
  {% assign slug  = name | slugify %}
  <li>
    {%- assign display = site.data.acts[slug] | default: name -%}
    <a href="{{ '/acts/' | append: slug | append: '/' | relative_url }}">{{ display }}</a>
    ({{ posts | size }})
  </li>
{% endfor %}
</ul>

