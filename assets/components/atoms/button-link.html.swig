---
title: button-link
name: button-link
collection: atoms
notes: |
  ##### Usage : `button-link`
  ##### Options :
  - **label** - String
  - **url** - String
  - **theme** - String (default `primary`, `secondary`, `succes`, `warning`, ...)
---
{% set chevron = true %}
<a href="/{{ url|default('#') }}" class="button-link btn btn-lg btn-{{ theme|default('primary') }}">
  {% spaceless %}
    {{ label|default('My button') }}
  {% endspaceless %}
</a>
