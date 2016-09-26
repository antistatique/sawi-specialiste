---
title: news
name: news
collection: organisms
notes: |
  ##### Usage : `news`
  ##### Options :
  - **option** - Type
---

      <h3 class="fine-weight">Actualités</h3>
        {% for currentnews in data.news %}
          {% include '../molecules/teaser-news.html.swig' with {news: currentnews} %}
        {% endfor %}
