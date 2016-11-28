---
title: header-light
name: header-light
collection: molecules
notes: |
  ##### Usage : `header-light`
  ##### Options :
  - **cours** - object
---
<header class="header-light">
  <div class="container">
    <div class="header-container">
      <img src="/build/img/logo.svg" alt="" class="header-logo" onerror="this.onerror=null; this.src='/build/img/logo.png'" />
      <h3 class="text-right header-title">
          <a href="{{ cours.sawiurl }}" target="_blank" class="header-link"><span class="hidden-xs">sawi</span>.com <img src="/build/img/icon-external-link.svg" alt=""/></a>
      </h3>
    </div>
  </div>
</header>
