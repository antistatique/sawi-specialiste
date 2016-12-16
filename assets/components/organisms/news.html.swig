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
    <div class="col-md-12 news-header">
      <h2 class="h1 media-heading news-title fine-weight">Actualités</h2>
      <h4 class="media-heading news-more text-book">
        <a href="#" class="no-underline">Voir toutes les actualités <i class="fa fa-angle-right text-link icon-spacer-sm" aria-hidden="true"></i></a>
      </h4>
    </div>
  </div>
  <div class="spacer spacer-md"></div>

  <div class="row">
  {% for currentnews in data.news %}
    <div class="col-md-4">{% include '../molecules/teaser-news.html.swig' with {news: currentnews} %}</div>
  {% endfor %}
  </div>
</div>
