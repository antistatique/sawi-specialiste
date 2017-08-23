---
title: footer
name: footer
collection: organisms
notes: |
  ##### Usage : `footer`
  ##### Options :
  - **option** - Type
---
<div class="spacer spacer-md"></div>

<div class="theme-corporate">
  <div class="container">
    {% include '../molecules/newsletter.html.swig' %}
  </div>
</div>
















<div class="footer-certifications">
  <div class="spacer spacer-md"></div>
  <div class="container">

    <h3 class="h1 media-heading fine-weight">Accréditations</h3>

    <div class="footer-certifications-logos">
      <div class="teaser-certification">
        <img class="img-responsive" src="/themes/sawi/build/img/certification-EDUQUA.png" alt="Certification EDUQUA">
      </div>

      <div class="teaser-certification">
        <img class="img-responsive" src="/themes/sawi/build/img/certification-SQS.png" alt="Certification SQS ISO 9001">
      </div>

      <div class="teaser-certification">
        <img class="img-responsive" src="/themes/sawi/build/img/certification-IAA.png" alt="Certification IAA">
      </div>
    </div>
    <div class="spacer spacer-md"></div>
  </div>
</div>
<footer>
  <div class="spacer spacer-md"></div>
  <div class="container">
    <div class="footer-inner row">
      <div class="col-md-8">
        {% include '../molecules/contact.html.swig' %}
      </div>
      <div class="col-md-4">
        <div class="spacer spacer-lg visible-xs visible-sm"></div>
        {% include '../molecules/social.html.swig' %}

        <div class="spacer spacer-md"></div>
        <div class="row same-height-group footer-certifications">
          <div class="col-xs-4 same-height">
            {% include '../molecules/teaser-certification.html.swig' %}
          </div>
          <div class="col-xs-4 same-height">
            {% include '../molecules/teaser-certification.html.swig' %}
          </div>
          <div class="col-xs-4 same-height">
            {% include '../molecules/teaser-certification.html.swig' %}
          </div>
        </div>

        {% include '../atoms/signature.html.swig' %}
      </div>
    </div>
  </div>
</footer>
