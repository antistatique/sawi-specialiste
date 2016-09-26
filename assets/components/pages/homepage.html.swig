---
title: homepage
name: homepage
collection: pages
styleguide: false
layout: page.html.swig
---
{% include '../molecules/header-menu.html.swig' %}
<div class="container">
	<div class="row">
		<div class="col-sm-8">
			{% include '../atoms/page-title.html.swig' with {label: "Le centre suisse d'enseignement du marketing, de la publicité et de la communication" } %}
		</div>
		<div class="col-sm-4">
			{% include '../molecules/alert-language.html.swig' %}
		</div>
	</div>
  <div class="row">
    <div class="col-sm-8">
      {% include '../organisms/news.html.swig' %}
    </div>
    <div class="col-sm-4">
      {% include '../organisms/infos.html.swig' %}
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12">
  	{% set basic = data.basic.formations %}
  	{% include '../molecules/teaser-basic-page.html.swig' with {basic: basic}  %}
  	</div>
  </div>
  <div class="row">
    <div class="col-sm-6">
  	{% set formation = data.formation.continues %}
  	{% include '../molecules/teaser-formations.html.swig' with {formation: formation}  %}
  	</div>
  	<div class="col-sm-6">
  	{% set formation = data.formation.completes %}
  	{% include '../molecules/teaser-formations.html.swig' with {formation: formation}  %}
  	</div>
  </div>
  <div class="row">
    <div class="col-sm-12">
  	{% set basic = data.basic.sawi %}
  	{% include '../molecules/teaser-basic-page.html.swig' with {basic: basic}  %}
  	</div>
  </div>
  <div class="row">
    <div class="col-sm-12">
  	{% set basic = data.basic.entreprise %}
  	{% include '../molecules/teaser-basic-page.html.swig' with {basic: basic}  %}
  	</div>
  </div>
  <div class="row">
  	<div class="col-sm-12">
  		{% include '../organisms/footer.html.swig' %}
  	</div>
  </div>
</div>
