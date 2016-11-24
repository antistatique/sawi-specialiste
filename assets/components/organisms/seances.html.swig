---
title: seances
name: seances
collection: organisms
notes: |
  ##### Usage : `seances`
---
<div class="seances">
  <div class="row">
    <div class="col-md-10 seances-header">
      <h2 class="h1 media-heading seances-title fine-weight">Séances d’informations</h2>
    </div>
    <div class="spacer"></div>
  </div>

  <div class="row">
  {% for currentseance in data.seances %}
    {% if loop.index % 2 %}
      </div><div class="row">
    {% endif %}
    <div class="col-md-5">
      {% include '../molecules/teaser-seance.html.swig' with {seance: currentseance} %}
      <div class="spacer spacer-sm"></div>
    </div>
  {% endfor %}
  </div>
</div>
