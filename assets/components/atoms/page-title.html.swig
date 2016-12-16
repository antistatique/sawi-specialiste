---
title: page-title
name: page-title
collection: atoms
notes: |
  ##### Usage : `page-title`
  ##### Options :
  - **option** - Type
---
<h1 class="fine-weight">
  {% spaceless %}
    {% if label %}
      {{label}}
    {% else %}
      Titre de la page
    {% endif %}
  {% endspaceless %}
</h1>
