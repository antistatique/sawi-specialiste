---
title: news
name: news
collection: organisms
notes: |
  ##### Usage : `news`
  ##### Options :
  - **option** - Type
---
<div class="news">
  <div class="row">
    <div class="col-md-10 news-header">
      <h2 class="h1 media-heading news-title fine-weight">Actualités</h2>
      <h6 class="media-heading new-more text-book"><a href="#">Voir toutes les actualités</a></h6>
    </div>
    <div class="spacer"></div>
  </div>

  <div class="row">
  {% for currentnews in data.news %}
    {% if loop.index % 2 %}
      </div><div class="row">
    {% endif %}
    <div class="col-md-5">{% include '../molecules/teaser-news.html.swig' with {news: currentnews} %}</div>
  {% endfor %}
  </div>
</div>
