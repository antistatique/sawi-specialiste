---
title: teaser basic-page
name: teaser-basic-page
collection: molecules
notes: |
  ##### Usage : `teaser-basic-page`
  ##### Options :
  - **basic** - Object
---
<div class="teaser-basic-page">
  <h2 class="media-heading">
    {{ basic.title|default('Titre de la page') }}
  </h2>
  <p class="fine-weight">
    {{ basic.resume|default('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua') }}
  </p>
  {% include '../atoms/button.html.swig' with {label: basic.cta} %}
</div>
