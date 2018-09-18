---
layout: page
title: People
permalink: /people/
description: Members of this laboratory
published: true
---

{% for person in site.people %}

<div class="person ">
    <div class="thumbnail">
        <a href="{{ person.redirect }}" target="_blank">
        {% if person.img %}
        <img class="thumbnail" src="{{ person.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ person.title }}</h1>
            <br/>
            <p>{{ person.description }}</p>
        </span>
        </a>
    </div>
</div>

{% endfor %}
