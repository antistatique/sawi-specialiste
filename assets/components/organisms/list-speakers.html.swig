---
title: list-speakers
name: list-speakers
collection: organisms
notes: |
  ##### Usage : `list-speakers`
---
<div class="list-speakers row">
  <div class="col-xs-12 col-md-4">
    {% include '../molecules/facets.html.swig' %}
  </div>
  <div class="col-xs-12 col-md-8">
    <div class="row">
      <div class="col-sm-6">
        {% include '../molecules/teaser-profil.html.swig' %}
        <div class="spacer spacer-sm"></div>
      </div>
      <div class="col-sm-6">
        {% include '../molecules/teaser-profil.html.swig' %}
        <div class="spacer spacer-sm"></div>
      </div>
      <div class="col-sm-6">
        {% include '../molecules/teaser-profil.html.swig' %}
        <div class="spacer spacer-sm"></div>
      </div>
      <div class="col-sm-6">
        {% include '../molecules/teaser-profil.html.swig' %}
        <div class="spacer spacer-sm"></div>
      </div>
    </div>
  </div>
</div>
