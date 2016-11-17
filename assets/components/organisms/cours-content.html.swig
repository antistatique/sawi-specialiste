---
title: cours-content
name: cours-content
collection: organisms
notes: |
  ##### Usage : `cours-content`
  ##### Options :
  - **cours** - object
---


<div class="container">
  <div class="row">
    <div class="col-sm-5">
      <h3>Objectifs</h3>
      <h4 class="fine-weight">
        {{ cours.objectif }}
      </h4>
    </div>
    <div class="col-sm-5">
      <div class="well">
        <h3>
          <img src="/build/img/icon-chronometer.svg" onerror="this.onerror=null; this.src='/build/img/icon-chronometer.png'" class="inline-icon" />
          Durée 6 mois
        </h3>
        <h4 class="fine-weight">
          À partir du 21 septembre 2016
        </h4>
      </div>
      <h3>Thèmes abordés</h3>
      {% for theme in cours.themes %}
        <span class="label label-default">{{theme.item}}</span>
      {% endfor %}
    </div>
  </div>
  {% if cours.video %}
  <div class="row">
    <div class="col-sm-10">
      <h3>Vidéo de présentation</h3>
      <div class="video embed-responsive embed-responsive-16by9">
        <iframe src="{{ cours.video }}" class="embed-responsive-item" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>
      </div>
    </div>
  </div>
  {% endif %}
  <div class="row">
    <div class="col-sm-10">
    <h3>Information pratiques</h3>
    <table class="table table-striped">
      {% for info in cours.infos %}
      <tr>
        <td class="text-right table-label"><strong>{{info.label}}</strong></td>
        <td>
          {{info.value|raw}}
        </td>
      </tr>
      {% endfor %}
    </table>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-10">
      <img src="{{ cours.illustrationseparator }}" alt="" style="max-width:100%;" width="100%"/>
    </div>
  </div>
  <div class="row">
    <div class="col-sm-10">
      <h2 class="fine-weight">Les formations de spécialistes</h2>
      <div class="row">
        {% for currentcours in data.cours %}
        <div class="col-xs-12 col-sm-6 col-md-4">
          {% include '../atoms/course-tile.html.swig' with {cours: currentcours} %}
        </div>
        {% endfor %}
      </div>
    </div>
  </div>

</div>
