---
title: footer
name: footer
collection: organisms
notes: |
  ##### Usage : `footer`
  ##### Options :
  - **option** - Type
---
<div class="row">
  <div class="col-sm-8">
    {% include '../molecules/newsletter.html.swig' %}
    {% include '../molecules/contact.html.swig' %}    
  </div>
  <div class="col-sm-4">
    {% include '../molecules/social.html.swig' %}    
  </div>
</div>