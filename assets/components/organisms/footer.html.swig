---
title: footer
name: footer
collection: organisms
notes: |
  ##### Usage : `footer`
  ##### Options :
  - **option** - Type
---
<footer>
  <div class="container">
    <div class="footer-inner row">
      <div class="col-md-8">
        {% include '../molecules/newsletter.html.swig' %}
        <div class="spacer spacer-xs"></div>
        {% include '../molecules/contact.html.swig' %}
      </div>
      <div class="col-md-4">
        <div class="spacer spacer-lg visible-xs visible-sm"></div>
        {% include '../molecules/social.html.swig' %}

        <div class="spacer spacer-md"></div>
        <div class="row same-height-group footer-certifications">
          <div class="col-md-4 same-height">
            {% include '../molecules/teaser-certification.html.swig' %}
          </div>
          <div class="col-md-4 same-height">
            {% include '../molecules/teaser-certification.html.swig' %}
          </div>
          <div class="col-md-4 same-height">
            {% include '../molecules/teaser-certification.html.swig' %}
          </div>
        </div>

        {% include '../atoms/signature.html.swig' %}
      </div>
    </div>
  </div>
</footer>
