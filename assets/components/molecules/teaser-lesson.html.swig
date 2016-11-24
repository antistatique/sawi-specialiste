---
title: teaser-lesson
name: teaser-lesson
collection: molecules
notes: |
  ##### Usage : `teaser-lesson`
  ##### Options :
  - **lesson** - object
---
<h5>
  <a href="{{ lesson.url|default('#') }}" class="teaser-lesson no-underline">
    {% spaceless %}
      {{ lesson.shorttitle|default('Marketing') }}
      <i class="fa fa-angle-right text-link m-l-1" aria-hidden="true"></i>
    {% endspaceless %}
  </a>
</h5>
