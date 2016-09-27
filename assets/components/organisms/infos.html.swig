---
title: infos
name: infos
collection: organisms
notes: |
  ##### Usage : `infos`
  ##### Options :
  - **option** - Type
---
<h2 class="fine-weight">Prochaines séances d'informations</h2>
{% for currentinfos in data.info %}
  {% include '../molecules/teaser-info.html.swig' with {info: currentinfos} %}
{% endfor %}
{% include '../atoms/button.html.swig' with {label: "Toutes les séances d'information"} %}