---
title: menu
name: menu
collection: pages
styleguide: false
layout: page.html.swig
---
{% set cours = data.portail %}

{% include '../atoms/body-overlay.html.swig' %}
{% include '../molecules/header-menu.html.swig' %}
{% include '../molecules/header.html.swig' %}
{% include '../molecules/alert.html.swig' %}
{% include '../molecules/jumbotron.html.swig' with {cours: cours} %}

<div class="container">
  <div class="spacer spacer-sm"></div>
  <div class="spacer spacer-md"></div>
  {% include '../organisms/news.html.swig' %}

  <div class="spacer spacer-md"></div>
  {% include '../organisms/seances.html.swig' %}
</div>

<div class="spacer spacer-lg"></div>
{% include '../organisms/footer.html.swig' %}
