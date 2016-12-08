---
title: link
name: link
collection: atoms
notes: |
  ##### Usage : `link`
  ##### Options :
  - **link** - object
---
<a href="{{ link.url|default('#') }}" class=""> {{ link.text|default('link') }}</a>
