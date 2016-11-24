---
title: facets
name: facets
collection: molecules
notes: |
  ##### Usage : `facets`
---
<div class="filter">
  <h2 class="fine-weight media-heading">Rechercher un intervenant</h2>
  <div class="form-group">
    <input type="text" class="form-control full-width" placeholder="Nom, Prénom"></input>
  </div>

  <h2 class="fine-weight">Filtrer par spécialité</h2>
  <div class="form-group">
    <select class="input-select form-control" name="specialities">
      <option value="Spécialiste en stratégie digital">Spécialiste en stratégie digital</option>
    </select>
  </div>

  <h2 class="fine-weight">Filtrer par lieux</h2>
  <div class="form-group">
    <div class="form-checkboxes">
      <div class="input-checkbox">
        <label for="Lausanne" class="">
          <input class="" type="checkbox" id="Lausanne" name="location" value="lausanne">Lausanne
        </label>
      </div>

      <div class="input-checkbox">
        <label for="Montreux" class="">
          <input class="" type="checkbox" id="Montreux" name="location" value="montreux">Montreux
        </label>
      </div>
    </div>
  </div>

  <div class="form-group">
    <button class="btn btn-block btn-primary button button--primary js-form-submit form-submit btn-primary btn" type="submit" value="Filtrer">Filtrer</button>
  </div>
</div>
