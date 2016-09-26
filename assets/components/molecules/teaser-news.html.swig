---
title: teaser-news
name: teaser-news
collection: molecules
notes: |
  ##### Usage : `teaser-news`
  ##### Options :
  - **news** - Object
---

  <div class="row">
    <div class="col-sm-6">
        <img src="{{ news.image }}" alt="" width="100%"/>
    </div>
    <div class="col-sm-6">
      <h6 class="fine-weight">
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


