---
layout: page
title: Site Index
root: .
---

{% assign sorted_pages = (site.pages | sort: 'title') %}

{% for page in sorted_pages %}
 {% if page.title %}
  [{{ page.title }}]({{ site.baseurl }}{{ page.url }})
 {% endif %}
{% endfor %}
