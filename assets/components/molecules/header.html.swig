---
title: header
name: header
collection: molecules
notes: |
  ##### Usage : `header`
---
<header class="header">
  <div class="header-container">
    <div class="left-container">
      {% include '../atoms/menu-toggle.html.swig' %}
      <div class="logo-container">
        <img src="/build/img/logo.svg" alt="SAWI" onerror="this.onerror=null; this.src='/build/img/logo.png'" />
      </div>
      <div class="tagline">
        <p>Le centre suisse d'enseignement du marketing, de la publicité et de la communication</p>
      </div>
    </div>
    <div class="right-container">
      {% include '../atoms/language-picker.html.swig' %}
      {% include '../molecules/search-box.html.swig' %}
    </div>
  </div>
</header>
