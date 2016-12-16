---
title: header-menu
name: header-menu
collection: molecules
notes: |
  ##### Usage : `header-menu`
  ##### Options :
  - **option** - Type
---
<div class="header-menu">
  <div class="header-menu-container">
    <ul class="nav">
      <li class="">
        <h3 class="media-heading"><a href="#">Formations</a></h3>
        <ul class="children">
          <li><h4 class="media-heading fine-weight"><a href="#">Toutes les formations</a></h4></li>
          <li><h4 class="media-heading fine-weight"><a href="#">Formations continues</a></h4></li>
          <li><h4 class="media-heading fine-weight"><a href="#">Formations à templs plein</a></h4></li>
        </ul>
      </li>
      <li><h3 class="media-heading active">Actualités</a></h3></li>
      <li class="">
        <h3 class="media-heading"><a href="#">À propos</a></h3>
        <ul class="children">
          <li><h4 class="media-heading fine-weight"><a href="#">Team</a></h4></li>
          <li><h4 class="media-heading fine-weight"><a href="#">Partenariats</a></h4></li>
          <li><h4 class="media-heading fine-weight"><a href="#">Presse</a></h4></li>
        </ul>
      </li>
      <li><h3 class="media-heading"><a href="">Entreprises</a></h3></li>
      <li><h3 class="media-heading"><a href="">Contact</a></h3></li>
      <li><h3 class="media-heading"><a href="">Connexion</a></h3></li>
    </ul>
  </div>

  <div class="spacer spacer-lg"></div>
  {% include '../molecules/socials-icons.html.swig' %}
</div>
