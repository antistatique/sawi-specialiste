{% extends "base.html.swig" %}

{% block content %}
  {% set path = '../components/samples/' + name + '.html.swig' %}
  <div id="page-wrapper">
    {% include path %}
  </div>
{% endblock %}

{% block javascripts %}
{% endblock %}
