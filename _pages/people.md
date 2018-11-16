---
layout: page
title: Team
permalink: /team/
description: People that participate in this laboratory.
published: true
---

<ul>
{% for person in site.people %}

<li>
    {% if person.redirect %}
    <a href="//{{ person.redirect }}" target="_blank"><span>{{ person.title }}</span></a>
    {% else %}
    <span>{{ person.title }}</span>
    {% endif %}    
    - <span>{{ person.description }}</span>
</li>

{% endfor %}
</ul>

<img class="everybody" src="{{ '/assets/img/everybody.jpg' | prepend: site.baseurl | prepend: site.url }}"/>
