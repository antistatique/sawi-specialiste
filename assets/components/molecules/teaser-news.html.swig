---
title: teaser-news
name: teaser-news
collection: molecules
notes: |
  ##### Usage : `teaser-news`
  ##### Options :
  - **news** - Object
---

<div class="teaser-news">
  <div class="teaser-news-cover">
    <a href="#">
      <img class="img-responsive" src="{{ news.image|default('/build/img/placeholder/455x305.png') }}" alt="{{ news.title|default('Ut egestas nec ante sit') }}" />
    </a>
  </div>
  <div class="teaser-news-body">
    <h6 class="teaser-news-date text-muted">{{ news.date|default('18 novembre 2016') }}</h6>
    <h3 class="media-heading">
      <a href="#">{{ news.title|default('Ut egestas nec ante sit') }}</a>
    </h3>
    <p class="fine-weight">
      {{ news.resume|default('Vestibulum scelerisque risus eu mauris eleifend, ac laoreet elit maximus. Proin vulputate tincidunt urna, nec semper nunc ullamcorper sed. Mauris id dignissim sem.') }}
    </p>
  </div>
</div>
