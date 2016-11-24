---
title: footer
name: footer
collection: organisms
notes: |
  ##### Usage : `footer`
  ##### Options :
  - **option** - Type
---
<footer class="row">
  <div class="col-md-8">
    {% include '../molecules/newsletter.html.swig' %}
    <div class="spacer spacer-xs"></div>
    {% include '../molecules/contact.html.swig' %}
  </div>
  <div class="col-md-4">
    <div class="spacer spacer-lg visible-xs visible-sm"></div>
    {% include '../molecules/social.html.swig' %}
    {% include '../atoms/signature.html.swig' %}
  </div>
</footer>
