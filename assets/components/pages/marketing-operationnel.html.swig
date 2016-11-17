---
title: marketing-operationnel
name: marketing-operationnel
collection: pages
styleguide: false
layout: page.html.swig
---
{% set cours = data.cours.marketingoperationnel %}

{% include '../molecules/header-light.html.swig'  with {cours: cours} %}
{% include '../molecules/jumbotron.html.swig' with {cours: cours} %}

{% include '../organisms/cours-content.html.swig' with {cours: cours} %}

{% include '../molecules/mega-cta.html.swig' %}
