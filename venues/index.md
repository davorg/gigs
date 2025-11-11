---
layout: default
title: All Venues
permalink: /venues/
nav_exclude: true
---

<ul>
{% assign venues = site.categories | sort %}
{% for pair in venues %}
  {% assign name  = pair[0] %}
  {% assign posts = pair[1] %}
  {% assign slug  = name | slugify %}
  <li>
    {%- assign display = site.data.venues[slug] | default: name -%}
    <a href="{{ '/venues/' | append: slug | append: '/' | relative_url }}">{{ display }}</a>
    ({{ posts | size }})
  </li>
{% endfor %}
</ul>

