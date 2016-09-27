---
title: teaser-news
name: teaser-news
collection: molecules
notes: |
  ##### Usage : `teaser-news`
  ##### Options :
  - **news** - Object
---

<div class="media">
  <div class="media-left">
    <a href="#">
      <img class="media-object" src="{{ news.image }}" alt="" style="width:400px;" />
    </a>
  </div>
  <div class="media-body">
    <h6 class="fine-weight media-heading">
      {{ news.date }}
    </h6>
    <h5>
      <a href="#">{{ news.title }}</a>
    </h5>
    <p>
      {{ news.resume }}
    </p>
  </div>
</div>