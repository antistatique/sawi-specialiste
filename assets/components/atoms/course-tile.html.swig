---
title: course-tile
name: course-tile
collection: atoms
notes: |
  ##### Usage : `course-tile`
  ##### Options :
  - **cours** - object
---
<a href="{{ cours.url|default('#') }}" class="course-tile {{ cours.colortheme|default('theme-strategie-digital') }} no-underline">
  {% spaceless %}
    {{ cours.shorttitle|default('Stratégie digitale') }}
  {% endspaceless %}
</a>
