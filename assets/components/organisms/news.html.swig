---
title: news
name: news
collection: organisms
notes: |
  ##### Usage : `news`
  ##### Options :
  - **option** - Type
---
<h2 class="fine-weight">Actualités</h2>
{% for currentnews in data.news %}
  {% include '../molecules/teaser-news.html.swig' with {news: currentnews} %}
{% endfor %}
  {% include '../atoms/button.html.swig' with {label: "Toutes les actualités"} %}
