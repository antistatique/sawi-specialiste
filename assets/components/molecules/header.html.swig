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
      <div class="hidden-xs">
        {% include '../atoms/language-picker.html.swig' %}
      </div>
    </div>
    <div class="right-container hidden-xs hidden-sm">
      {% include '../molecules/menu-secondary.html.swig' %}
    </div>
  </div>
  <div class="visible-xs">
    {% include '../atoms/language-picker.html.swig' %}
  </div>
  <div class="hidden-xs hidden-sm hidden-md">
    {% include '../molecules/menu-desktop.html.swig' %}
  </div>
</header>
<a name="main-content" id="main-content">
