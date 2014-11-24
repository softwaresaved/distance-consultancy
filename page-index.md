---
layout: page
title: Page Index
root: .
---

{% assign sorted_pages = (site.pages | sort: 'title') %}

{% for page in sorted_pages %}
 {% if page.title %}
  [{{ page.title }}]({{ site.baseurl }}{{ page.url }})
    {% if page.sections %}
      {% for section in page.sections %} 
* [{{section | replace:'pcnt','%'}}]({{ site.baseurl }}{{ page.url }}#{{section | replace:'\','' | replace:'pcnt',''| slugify}})
      {% endfor %}
<p/>
    {% endif %}
 {% endif %}
{% endfor %}
