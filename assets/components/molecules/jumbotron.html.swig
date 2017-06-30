---
title: jumbotron
name: jumbotron
collection: molecules
notes: |
  ##### Usage : `jumbotron`
  ##### Options :
  - **cours** - object
---
<div class="jumbotron-sawi theme-school-procom">
  <div class="container">
    <div class="jumbotron-sawi-container jumbotron-sawi-container-thin">
      <div class="jumbotron-sawi-intro jumbotron-sawi-intro-full-width">
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
