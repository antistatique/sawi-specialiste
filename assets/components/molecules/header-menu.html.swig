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
  <div class="container">
    <div class="header-menu-container">
      <ul class="">
        <li class="">
          <a href="#">Formations</a>
          <ul class="children">
            <li><a href="#">Toutes les formations</a></li>
            <li><a href="#">Formations continues</a></li>
            <li><a href="#">Formations à templs plein</a></li>
          </ul>
        </li>
        <li><span class="active">Actualités</span></li>
        <li class="">
          <a href="#">À propos</a>
          <ul class="children">
            <li><a href="#">Team</a></li>
            <li><a href="#">Partenariats</a></li>
            <li><a href="#">Presse</a></li>
          </ul>
        </li>
        <li><a href="">Entreprises</a></li>
        <li><a href="">Contact</a></li>
        <li><a href="">Connexion</a></li>
      </ul>
    </div>

    {% include '../molecules/socials-icons.html.swig' %}
  </div>
</div>
