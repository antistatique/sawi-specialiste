---
title: homepage
name: homepage
collection: pages
styleguide: false
layout: page.html.swig
---
{% set cours = data.portail %}

{% include '../atoms/body-overlay.html.swig' %}
{% include '../molecules/menu-access.html.swig' %}
{% include '../molecules/menu-mobile.html.swig' %}
{% include '../molecules/header.html.swig' %}

{% include '../molecules/jumbotron.html.swig' with {cours: cours} %}

<div class="alert theme-marketing m-b-0">
  <div class="container">
    <div class="link">
      <a href="/romandie/seances-informations" class="link-hover-white no-underline">
        <strong>NOUS RENCONTRER</strong><br>
        <span>permanences, séances d'information, rendez-vous</span>&nbsp;<i class="fa fa-angle-right d-inline m-l-05" aria-hidden="true"></i>
      </a>
    </div>
  </div>
</div>

<div class="container">
  <div class="spacer spacer-sm"></div>
  <div class="spacer spacer-md"></div>
  {% include '../organisms/news.html.swig' %}

  <div class="spacer spacer-md"></div>
  {% include '../organisms/seances.html.swig' %}
</div>

<div class="spacer spacer-lg"></div>
{% include '../organisms/footer.html.swig' %}
