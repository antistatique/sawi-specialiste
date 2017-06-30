---
title: inline-cta
name: inline-cta
collection: molecules
notes: |
  ##### Usage : `inline-cta`
  ##### Options :
  - **cours** - object
---
<div class="inline-cta">
  <p class="inline-cta-container">
    <a href="{{ cours.conversionurl }}" class="btn btn-primary btn-lg" id="cta-inline">Intéressé ?</a><br/>
    <span class="inline-cta-legend">Recevez le dossier complet par email  <a href="#">lien</a></span>
  </p>
  <div class="inline-cta-logo">
    <img src="/build/svg/logo-sms-color.svg" alt="Logo pour Nos formations continues">
  </div>
</div>
