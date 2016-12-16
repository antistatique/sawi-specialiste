---
title: teaser-info
name: teaser-info
collection: molecules
notes: |
  ##### Usage : `teaser-info`
  ##### Options :
  - **infos** - Object
---
<div class="row">
  <div class="col-sm-12">
    <h6 class="text-book">
      {{ info.date }}
    </h6>
    <h5>
      <a href="#" class="no-underline">{{ info.title }}</a>
    </h5>
    <p>
      {{ info.resume }}
    </p>
    <p>
      {{ info.place }}
    </p>
  </div>
</div>
