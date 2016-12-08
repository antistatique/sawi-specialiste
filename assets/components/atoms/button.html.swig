---
title: button
name: button
collection: atoms
notes: |
  ##### Usage : `button`
  ##### Options :
  - **label** - String
  - **theme** - String (default `primary`, `secondary`, `succes`, `warning`, ...)
---
<button class="btn btn-lg btn-{{ theme|default('primary') }}">
  {% spaceless %}
    {{ label|default('Inscrivez-vous') }}
  {% endspaceless %}
</button>
