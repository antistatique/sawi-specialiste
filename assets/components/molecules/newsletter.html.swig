---
title: newsletter
name: newsletter
collection: molecules
notes: |
  ##### Usage : `newsletter`
  ##### Options :
  - **option** - Type
---
<h3>La newsletter</h3>
<h3 class="fine-weight">pour ne manquer aucune de nos actualités</h3>
<form class="form-inline">
  <div class="form-group">
    <label for="exampleInputEmail2">Votre adresse email</label>
    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
    {% include '../atoms/button.html.swig' with {label: "J'en suis !"} %}
  </div>
</form>