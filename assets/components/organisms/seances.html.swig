---
title: seances
name: seances
collection: organisms
notes: |
  ##### Usage : `seances`
---
<div class="seances">
  <div class="row">
    <div class="col-md-12 seances-header">
      <h2 class="h1 media-heading seances-title fine-weight">Séances d’informations</h2>
      <h4 class="media-heading seances-more text-book">
        <a href="#" class="no-underline">Voir toutes les séances <i class="fa fa-angle-right text-link icon-spacer-sm" aria-hidden="true"></i></a>
      </h4>
    </div>
    <div class="spacer"></div>
  </div>

  <div class="row">
  {% for currentseance in data.seances %}
    {% if loop.index % 2 %}
      </div><div class="row">
    {% endif %}
    <div class="col-md-6">
      {% include '../molecules/teaser-seance.html.swig' with {seance: currentseance} %}
      <div class="spacer spacer-sm"></div>
    </div>
  {% endfor %}
  </div>
</div>
