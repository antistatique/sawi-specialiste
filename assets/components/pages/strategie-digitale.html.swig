---
title: strategie-digitale
name: strategie-digitale
collection: pages
styleguide: false
layout: page.html.swig
---
{% set cours = data.cours.strategiedigital %}

{% include '../molecules/header-light.html.swig'  with {cours: cours} %}

{% include '../molecules/jumbotron.html.swig' with {cours: cours} %}

{% include '../organisms/cours-content.html.swig' with {cours: cours} %}

{% include '../molecules/mega-cta.html.swig' %}
