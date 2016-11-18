<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>SAWI - formation continue en marketing, publicité &amp; communication - sawi.com</title>
    <meta name="description" content="Depuis 1968, le SAWI Lausanne, Suisse, centre suisse d'enseignement du marketing, de la publicité, de la communication et de la vente, propose une large palette de formations professionnelles répondant aux besoins des entreprises et des personnes actives.">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="viewport" content="width=device-width">

    {% if styleguide %}
      <link rel="stylesheet" href="/build/css/styleguide.css">
    {% endif %}

    <link rel="stylesheet" href="/build/css/vendors.min.css">
    <link rel="stylesheet" href="/build/css/main.css">

    <script>
       WebFontConfig = {
          typekit: { id: 'tar2gdp' }
       };

       (function(d) {
          var wf = d.createElement('script'), s = d.scripts[0];
          wf.src = 'https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js';
          s.parentNode.insertBefore(wf, s);
       })(document);
    </script>

    <!--[if lt IE 9]>
      <script src="/build/js/polyfills.min.js"></script>
    <![endif]-->

    <link rel="apple-touch-icon" sizes="180x180" href="{{data.path}}/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="{{data.path}}/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="{{data.path}}/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="{{data.path}}/manifest.json">
    <link rel="mask-icon" href="{{data.path}}/safari-pinned-tab.svg" color="#ffe200">
    <meta name="theme-color" content="#ffffff">
  </head>
  <body>
    {% if !styleguide %}
        <!-- Google Tag Manager -->
        <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-KDWZ3B"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-KDWZ3B');</script>
        <!-- End Google Tag Manager -->
    {% endif %}
    {% if styleguide %}
      {% include 'styleguide/icons.html.swig' %}
      {% include 'styleguide/menu.html.swig' %}
      <div class="styleguide-container">
        <div class="styleguide-header-container"{% if heading_color %} style="background: {{heading_color}};"{% endif %}>
          {% include 'styleguide/control.bar.html.swig' %}
          <h1>{{title}}</h1>
        </div>
    {% endif %}

    {% block content %}{% endblock %}

    {% if styleguide %}
      </div>

    <script src="//code.jquery.com/jquery-2.2.4.min.js" crossorigin="anonymous"></script>
    <script src="/build/js/vendors.min.js"></script>
    <script src="/build/js/bundle.js"></script>
    {% endif %}

    {% if styleguide %}
      <script>
        (function($){
          $(document).ready(function(){
            $('.styleguide-item-code code').each(function(){
              $(this).html($(this).html().replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;'));
            });
          });
        }(jQuery));
      </script>
      <script src="/build/js/styleguide.min.js"></script>
    {% endif %}
    {% if !styleguide %}
    <script>
      window.intercomSettings = {
        app_id: "k46x6m1d"
      };
    </script>
    <script>(function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',intercomSettings);}else{var d=document;var i=function(){i.c(arguments)};i.q=[];i.c=function(args){i.q.push(args)};w.Intercom=i;function l(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://widget.intercom.io/widget/k46x6m1d';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);}if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})()</script>
    {% endif %}

    {% block javascripts %}{% endblock %}
  </body>
</html>
