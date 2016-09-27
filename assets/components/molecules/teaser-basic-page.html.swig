---
title: teaser basic-page
name: teaser-basic-page
collection: molecules
notes: |
  ##### Usage : `teaser-basic-page`
  ##### Options :
  - **basic** - Object
---
<div class="row">
  <div class="col-sm-12">
    <h2 class="fine-weight">
      {{ basic.title }}
    </h2>
    <p>
      {{ basic.resume }}
    </p>
    {% include '../atoms/button.html.swig' with {label: basic.cta} %}
  </div>
</div>