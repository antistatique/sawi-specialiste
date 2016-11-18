---
title: teaser-seance
name: teaser-seance
collection: molecules
notes: |
  ##### Usage : `teaser-seance`
  ##### Options :
  - **seance** - object
---
<div class="teaser-seance">
  <a href="{{ seance.url|default('#') }}" class="">
    <div class="seance-tile {{ seance.colortheme|default('theme-strategie-digital') }}">
      {% spaceless %}
        {{ seance.shorttitle|default('Stratégie digitale') }}
      {% endspaceless %}
    </div>
    <div class="seance-infos">
      <h5 class="media-heading fine-weight">Séance d'informations</h5>
      <h5 class="media-heading">{{ seance.date|default('21 septembre 2016') }}</h5>
    </div>
  </a>
</div>
