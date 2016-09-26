---
title: header-menu
name: header-menu
collection: molecules
notes: |
  ##### Usage : `header-menu`
  ##### Options :
  - **option** - Type
---
<header class="header">
  <div class="container">
    <div class="header-container">
      <img src="/build/img/logo.svg" alt="" class="header-logo" onerror="this.onerror=null; this.src='/build/img/logo.png'" />
      <ul style="nav nav-pills" role="tablist">
        <li role="presentation"><a href="">Deutschschweiz</a></li>
        <li role="presentation" class="active"><a href="">Romandie</a></li>
      </ul>
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Formations <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Toutes les formations</a></li>
            <li><a href="#">Formations continues</a></li>
            <li><a href="#">Formations à templs plein</a></li>
          </ul>
        </li>
        <li><a href="">Actualités</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">À propos <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Présentation</a></li>
            <li><a href="#">Team</a></li>
            <li><a href="#">Intervenants</a></li>
            <li><a href="#">Partenariats</a></li>
            <li><a href="#">Presse</a></li>
          </ul>
        </li>
        <li><a href="">Entreprises</a></li>
        <li><a href="">Contact</a></li>
        <li><a href="">Connexion</a></li>
        <li><a href=""><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></li>
      </ul>
    </div>
  </div>
</header>

