---
title: media-planning
name: media-planning
collection: pages
styleguide: false
layout: page.html.swig
---
{% set cours = data.cours.mediaplanning %}

{# include '../molecules/header.html.swig'  with {cours: cours} #}
{% include '../molecules/jumbotron.html.swig' with {cours: cours} %}

{% include '../organisms/cours-content.html.swig' with {cours: cours} %}

{% include '../molecules/mega-cta.html.swig' %}
