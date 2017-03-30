---
title: inputs
name: inputs
collection: samples
styleguide: true
layout: samples.html.swig
---
<div class="row">
  <div class="col-xs-12">
    <div class="form-group readonly">
      <label>Champ lecture seule</label>
      <input type="text" class="form-control full-width" value="Tu peux me lire mais tu ne peux pas m'éditer !" readonly></input>
      <p class="help-block">Comment puis-je <strong>vous</strong> aider ?</p>
    </div>

    <div class="form-group">
      <label>Champ avec label</label>
      <input type="text" class="form-control full-width" placeholder="Quelque chose dans l'air..."></input>
    </div>

    <div class="form-group error">
      <label>Validation PAS OK</label>
      <input type="text" class="form-control full-width" placeholder="Houston… Nous avons un problème! Houston?"></input>
      <div class="input-error-desc">Voici comment résoudre ton problème.</div>
    </div>

    <div class="input-radio">
      <input type="radio" name="sessions" class="form-radio">
      <label class="option">SAWI - Lausanne</label>
    </div>

    <div class="input-checkbox">
      <input type="checkbox" name="sessions" class="form-radio">
      <label class="option">SAWI - Lausanne</label>
    </div>


    <div class="form-group">
      <select class="input-select form-control" name="specialities">
        <option value="Spécialiste en stratégie digital">Spécialiste en stratégie digital</option>
      </select>
    </div>

    <div class="input-rangeslider input-rangeslider-container">
      <div class="input-rangeslider-label">Pourcentage</div>
      <div class="input-rangeslider-range" data-start=0 data-min=0 data-max=100 data-input="input-rangeslider-value"></div>
      <input type="text" class="input-rangeslider-value" name="input-rangeslider-value" value="">
    </div>

  </div>
</div>

<div class="spacer spacer-sm"></div>
<div class="spacer spacer-sm"></div>

<div class="row">
  <div class="col-xs-12">
    <div class="input-rangeslider input-rangeslider-container">
      <div class="input-rangeslider-label">Privé</div>
      <div class="input-rangeslider-range input-rangeslider-range-1" data-start=6000 data-min=0 data-max=6000 data-linked-slider="input-rangeslider-range-2" data-input="input-rangeslider-value-1" data-input-percent="input-rangeslider-value-percent-1"></div>
      <div class="inputs">
        <input type="text" class="input-rangeslider-value" name="input-rangeslider-value-1" value="">
        <input type="text" class="input-rangeslider-value" name="input-rangeslider-value-percent-1" value="">
      </div>
    </div>

    <div class="spacer spacer-sm"></div>

    <div class="input-rangeslider input-rangeslider-container">
      <div class="input-rangeslider-label">Tiers</div>
      <div class="input-rangeslider-range input-rangeslider-range-2" data-start=0 data-min=0 data-max=6000 data-linked-slider="input-rangeslider-range-1" data-input="input-rangeslider-value-2" data-input-percent="input-rangeslider-value-percent-2"></div>
      <div class="inputs">
        <input type="text" class="input-rangeslider-value" name="input-rangeslider-value-2" value="">
        <input type="text" class="input-rangeslider-value" name="input-rangeslider-value-percent-2" value="">
      </div>
    </div>
  </div>
</div>

<div class="spacer spacer-md"></div>
