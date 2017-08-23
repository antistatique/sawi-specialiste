---
title: menu-mobile
name: menu-mobile
collection: molecules
notes: |
  ##### Usage : `menu-mobile`
  ##### Options :
  - **option** - Type
---
<div id="main-navigation" class="menu-mobile">
  <div class="menu-mobile-container">

    <div class="collapse-group">
      <a class="collapse-link h3 media-heading">Formations</a>
      <a class="collapse-toggle collapsed btn btn-icon btn-grey" role="button" data-toggle="collapse" href="#collapseFormations" aria-expanded="false" aria-controls="collapseFormations">
        <span class="collapse-chevron sawi-icons sawi-icons-chevron"></span>
        <span class="sr-only">Ouvrir le menu déroulant formations</span>
      </a>
    </div>
    <div class="collapse nav" id="collapseFormations">
      <ul class="list-unstyled children mb-0">
        <li><a class="h4 media-heading" href="#">Formations en un clin d'oeil</a></li>
        <li><a class="h4 media-heading" href="#">Formations continues</a></li>
        <li><a class="h4 media-heading" href="#">Formations à plein temps</a></li>
        <li><a class="h4 media-heading" href="#">Speed Learning</a></li>
        <li><a class="h4 media-heading" href="#">Formations à la carte</a></li>
      </ul>
    </div>
    <div class="spacer spacer-sm"></div>

    <a class="h3 media-heading active">Actualités</a>
    <div class="spacer spacer-sm"></div>

    <div class="collapse-group">
      <a class="collapse-link h3 media-heading">À propos</a>
      <a class="collapse-toggle collapsed btn btn-icon btn-grey" role="button" data-toggle="collapse" href="#collapseAbout" aria-expanded="false" aria-controls="collapseAbout">
        <span class="collapse-chevron sawi-icons sawi-icons-chevron"></span>
        <span class="sr-only">Ouvrir le menu déroulant formations</span>
      </a>
    </div>
    <div class="collapse nav" id="collapseAbout">
      <ul class="list-unstyled children mb-0">
        <li><a class="h4 media-heading" href="#">Team</a></li>
        <li><a class="h4 media-heading" href="#">Partenariats</a></li>
        <li><a class="h4 media-heading" href="#">Presse</a></li>
      </ul>
    </div>
    <div class="spacer spacer-md"></div>

    <a class="h3 media-heading">Entreprises</a>
    <div class="spacer spacer-md"></div>

    <a class="h3 media-heading">Contact</a>
    <div class="spacer spacer-md"></div>

    <a class="h3 media-heading">Connexion</a>
    <div class="spacer spacer-md"></div>
  </div>

  <div class="separator"></div>
    <ul class="list-unstyled">
      <li><a class="text-uppercase media-heading" href="#">Webcampus SAWI</a></li>
      <div class="spacer spacer-sm"></div>
      <li><a class="text-uppercase media-heading" href="#">Recherche </a></li>
    </ul>
  <div class="separator"></div>

  <div class="spacer spacer-sm"></div>
  {% include '../molecules/socials-icons.html.swig' %}
</div>
