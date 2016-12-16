---
title: jumbotron
name: jumbotron
collection: molecules
notes: |
  ##### Usage : `jumbotron`
  ##### Options :
  - **cours** - object
---
<div class="jumbotron-sawi {% if cours.colortheme %}{{ cours.colortheme }}{% endif %}">
  <div class="container">
    <div class="jumbotron-sawi-container">
      <div class="jumbotron-sawi-picture">
        {% if cours.illustration %}
        <img src="{{ cours.illustration }}" alt="" width="100%"/>
        {% else %}
        <img src="/build/img/cover-Strategie-Digitale.png" alt="" width="100%"/>
        {% endif %}
      </div>
      <div class="jumbotron-sawi-intro">
        <h1 class="jumbotron-sawi-h1">
          {% spaceless %}
          {% if cours.title %}
          {{cours.title}}
          {% else %}
          This is a title
          {% endif %}
          {% endspaceless %}
        </h1>
        <p class="text-light jumbotron-sawi-p">
          {% spaceless %}
          {% if cours.subtitle %}
          {{cours.subtitle}}
          {% else %}
          This is a subtitle
          {% endif %}
          {% endspaceless %}
        </p>
        {% include '../molecules/inline-cta.html.swig' with {cours: cours} %}
      </div>
    </div>
  </div>
</div>
