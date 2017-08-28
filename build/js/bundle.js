(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=n[o]={exports:{}};t[o][0].call(f.exports,function(e){var n=t[o][1][e];return s(n?n:e)},f,f.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function (global){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.gallery = gallery;

var _jquery = (typeof window !== "undefined" ? window['jQuery'] : typeof global !== "undefined" ? global['jQuery'] : null);

var _jquery2 = _interopRequireDefault(_jquery);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

/*global PhotoSwipe PhotoSwipeUI_Default */

function gallery() {

  // Define click event on gallery item
  (0, _jquery2.default)('.gallery').on('click', 'a', function (event) {

    // Prevent location change
    event.preventDefault();

    // Generate the tree
    var container = [];
    (0, _jquery2.default)('.gallery [itemprop="associatedMedia"]').each(function () {
      var $this = (0, _jquery2.default)(this);
      container.push({
        src: $this.find('a').attr('href'),
        w: $this.find('a').data('width'),
        h: $this.find('a').data('height')
      });
    });

    // Define object and gallery options
    var $pswp = (0, _jquery2.default)('.pswp'),
        $share_btn = $pswp.find('.pswp__button--share'),
        options = {
      index: (0, _jquery2.default)(this).data('index'),
      bgOpacity: 0.85,
      showHideOpacity: true,
      shareEl: true,
      shareButtons: [{ id: 'download', label: $share_btn.data('downloadLabel'), url: '{{raw_image_url}}', download: true }]
    };

    // Initialize PhotoSwipe
    var gallery = new PhotoSwipe($pswp[0], PhotoSwipeUI_Default, container, options);
    gallery.init();
  });
}

}).call(this,typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}],2:[function(require,module,exports){
(function (global){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.googlemap = googlemap;

var _jquery = (typeof window !== "undefined" ? window['jQuery'] : typeof global !== "undefined" ? global['jQuery'] : null);

var _jquery2 = _interopRequireDefault(_jquery);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function googlemap() {

  var $map = (0, _jquery2.default)('.google-map');
  if ($map.length > 0) {
    var position = { 'lat': parseFloat($map.data('latitude')), 'lng': parseFloat($map.data('longitude')) };
    var marker_icon = $map.data('marker');

    // Create a map object and specify the DOM element for display.
    var map = new google.maps.Map($map.get(0), {
      center: position,
      scrollwheel: true,
      zoom: 15,
      disableDefaultUI: true
    });

    map.set('styles', [{
      'featureType': 'all',
      'elementType': 'labels',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'administrative.country',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'administrative.locality',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'administrative.neighborhood',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'administrative.land_parcel',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'off'
      }]
    }, {
      'featureType': 'landscape',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }, {
        'color': '#f3f4f4'
      }]
    }, {
      'featureType': 'landscape.man_made',
      'elementType': 'geometry',
      'stylers': [{
        'weight': 0.9
      }, {
        'visibility': 'off'
      }]
    }, {
      'featureType': 'poi',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'off'
      }]
    }, {
      'featureType': 'poi',
      'elementType': 'labels.text',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'poi.government',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'poi.park',
      'elementType': 'geometry.fill',
      'stylers': [{
        'visibility': 'on'
      }, {
        'color': '#83cead'
      }]
    }, {
      'featureType': 'poi.school',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'off'
      }]
    }, {
      'featureType': 'road',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }, {
        'color': '#ffffff'
      }]
    }, {
      'featureType': 'road',
      'elementType': 'geometry',
      'stylers': [{
        'visibility': 'on'
      }, {
        'saturation': '1'
      }, {
        'gamma': '2.65'
      }]
    }, {
      'featureType': 'road',
      'elementType': 'geometry.stroke',
      'stylers': [{
        'visibility': 'off'
      }]
    }, {
      'featureType': 'road',
      'elementType': 'labels',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'road',
      'elementType': 'labels.text',
      'stylers': [{
        'visibility': 'off'
      }]
    }, {
      'featureType': 'road.highway',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }, {
        'color': '#fee379'
      }]
    }, {
      'featureType': 'road.arterial',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'simplified'
      }, {
        'color': '#fee379'
      }]
    }, {
      'featureType': 'road.local',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }, {
        'lightness': '1'
      }]
    }, {
      'featureType': 'road.local',
      'elementType': 'labels.text',
      'stylers': [{
        'lightness': '-3'
      }, {
        'color': '#887f7f'
      }, {
        'weight': '0.25'
      }]
    }, {
      'featureType': 'transit',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }]
    }, {
      'featureType': 'transit.line',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'simplified'
      }]
    }, {
      'featureType': 'water',
      'elementType': 'all',
      'stylers': [{
        'visibility': 'on'
      }, {
        'color': '#7fc8ed'
      }]
    }]);

    var description = '<div class="container-gmap">' + '<h5>' + $map.data('title') + '</h5>' + '<p>' + $map.data('address') + '<br />' + $map.data('npa') + ' ' + $map.data('city') + '<br />' + '</p>' + '</div>';

    var infowindow = new google.maps.InfoWindow({
      content: description
    });

    var marker = new google.maps.Marker({
      position: position,
      map: map,
      icon: marker_icon
    });

    infowindow.open(map, marker);
    marker.addListener('click', function () {
      infowindow.open(map, marker);
    });
  }
} /* globals google */

}).call(this,typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}],3:[function(require,module,exports){
'use strict';

var _menu_toggle = require('./menu_toggle.js');

var _timeline = require('./timeline.js');

var _search_box = require('./search_box.js');

var _googlemap = require('./googlemap.js');

var _gallery = require('./gallery.js');

var _rangeslider = require('./rangeslider.js');

var _input_files = require('./input_files.js');

var _video = require('./video.js');

(function () {
  (0, _menu_toggle.menu_toggle)();
  (0, _search_box.search_box)();
  (0, _gallery.gallery)();
  (0, _rangeslider.rangeslider)();
  (0, _input_files.input_files)();
  (0, _video.video)();

  window.addEventListener('load', function () {
    (0, _timeline.timeline)();
    (0, _googlemap.googlemap)();
  });
})();

},{"./gallery.js":1,"./googlemap.js":2,"./input_files.js":4,"./menu_toggle.js":5,"./rangeslider.js":6,"./search_box.js":7,"./timeline.js":8,"./video.js":9}],4:[function(require,module,exports){
(function (global){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.input_files = input_files;

var _jquery = (typeof window !== "undefined" ? window['jQuery'] : typeof global !== "undefined" ? global['jQuery'] : null);

var _jquery2 = _interopRequireDefault(_jquery);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function input_files() {

  (0, _jquery2.default)('.form-file').each(function () {
    var $handler = (0, _jquery2.default)(this).find('.form-file-handler'),
        $this = (0, _jquery2.default)(this),
        $input = (0, _jquery2.default)(this).find('[type="file"]');

    $this.on('change', function () {
      var files = $input[0].files;
      var $files = (0, _jquery2.default)(this).find('.files');
      if ($files.length == 0) {
        (0, _jquery2.default)('<div class="files"></div>').insertAfter($handler);
        $files = (0, _jquery2.default)(this).find('.files');
      } else {
        // Clean the list
        $files.html('');
      }

      if (files.length == 1) {
        $files.html('<small><i class="fa fa-file" aria-hidden="true"></i> <span>' + files[0].name + '</span></small>');
      } else {
        for (var x = 0; x < files.length; x++) {
          $files.append('<small><i class="fa fa-file" aria-hidden="true"></i> <span>' + files[x].name + '</span></small>');
        }
      }
    });
  });
}

}).call(this,typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}],5:[function(require,module,exports){
(function (global){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.menu_toggle = menu_toggle;

var _jquery = (typeof window !== "undefined" ? window['jQuery'] : typeof global !== "undefined" ? global['jQuery'] : null);

var _jquery2 = _interopRequireDefault(_jquery);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function menu_toggle() {
  (0, _jquery2.default)(document).on('click', '.menu-toggle, .menu-access .menu', function (e) {
    var $this = (0, _jquery2.default)(this);

    menu_toggle();

    // Open the menu when using skip-link
    if ($this.attr('href') != '#main-navigation') {
      e.preventDefault();
    }
  });

  // Close the menu when ESC is pressed
  (0, _jquery2.default)(document).keyup(function (e) {
    if (e.keyCode == 27) {
      var $body = (0, _jquery2.default)(document.body);
      if ($body.hasClass('menu-push-toright')) {
        menu_toggle();
      }
    }
  });

  function menu_toggle() {
    var $hamburger = (0, _jquery2.default)('header .hamburger');
    var $body = (0, _jquery2.default)(document.body);
    var $menu = (0, _jquery2.default)('.header-menu');
    var $overlay = (0, _jquery2.default)('.body-overlay');

    $hamburger.toggleClass('is-active');
    $body.toggleClass('menu-push-toright');
    $menu.toggleClass('menu-open');
    $overlay.toggleClass('visible');
  }
}

}).call(this,typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}],6:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.rangeslider = rangeslider;
/*global noUiSlider */

function rangeslider() {

  // /////////////////////////////////////////////////////////////////////////////////////
  // vars
  var rangeSliders = document.querySelectorAll('.input-rangeslider-range');

  // /////////////////////////////////////////////////////////////////////////////////////
  // binding
  if (rangeSliders != null) {

    // Loop on NodeList compatible all browsers (IE10+)
    [].forEach.call(rangeSliders, function (rangeSlider) {
      noUiSlider.create(rangeSlider, {
        start: parseInt(rangeSlider.getAttribute('data-start')),
        step: 1,
        // Disable animation on value-setting,
        // so the sliders respond immediately.
        animate: false,
        range: {
          min: parseInt(rangeSlider.getAttribute('data-min')),
          max: parseInt(rangeSlider.getAttribute('data-max'))
        }
      });

      var rangeSliderInput = document.querySelector('input[name="' + rangeSlider.getAttribute('data-input') + '"]');
      rangeSlider.noUiSlider.on('update', function (values, handle) {
        var rangeSliderInput = document.querySelector('input[name="' + this.target.getAttribute('data-input') + '"]');
        rangeSliderInput.value = Math.round(values[handle]);

        if (this.target.getAttribute('data-input-percent') != null) {
          var rangeSliderInputPercent = document.querySelector('input[name="' + this.target.getAttribute('data-input-percent') + '"]');
          var percent = rangeSliderInput.value / this.target.getAttribute('data-max') * 100;
          rangeSliderInputPercent.value = Math.round(percent);
        }
      });

      rangeSlider.noUiSlider.on('slide', function (values, handle) {
        var linkedSlider = document.querySelector('.' + this.target.getAttribute('data-linked-slider'));
        if (linkedSlider != null && typeof linkedSlider.noUiSlider !== 'undefined') {
          crossUpdate(values[handle], linkedSlider);
        }
      });

      rangeSliderInput.addEventListener('blur', function () {
        var rangeSlider = document.querySelector('[data-input="' + this.getAttribute('name') + '"]');

        if (this.value > parseInt(rangeSlider.getAttribute('data-max'))) {
          this.value = rangeSlider.getAttribute('data-max');
        }

        if (this.value < parseInt(rangeSlider.getAttribute('data-min'))) {
          this.value = rangeSlider.getAttribute('data-min');
        }

        rangeSlider.noUiSlider.set(this.value);
        var linkedSlider = document.querySelector('.' + rangeSlider.getAttribute('data-linked-slider'));
        if (linkedSlider != null && typeof linkedSlider.noUiSlider !== 'undefined') {
          crossUpdate(this.value, linkedSlider);
        }
      });
    });
  }

  function crossUpdate(value, slider) {
    var total = slider.getAttribute('data-max') - value;
    slider.noUiSlider.set(total);
    var rangeSliderInput = document.querySelector('input[name="' + slider.getAttribute('data-input') + '"]');
    rangeSliderInput.value = total;
  }
}

},{}],7:[function(require,module,exports){
(function (global){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.search_box = search_box;

var _jquery = (typeof window !== "undefined" ? window['jQuery'] : typeof global !== "undefined" ? global['jQuery'] : null);

var _jquery2 = _interopRequireDefault(_jquery);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function search_box() {
  (0, _jquery2.default)('.search-toggle').click(function (e) {
    e.preventDefault();
    var $html = (0, _jquery2.default)('html');

    (0, _jquery2.default)(this).toggleClass('open');
    (0, _jquery2.default)('.search-box-modal').toggleClass('visible');

    if ((0, _jquery2.default)(this).hasClass('open')) {
      $html.addClass('modal-open');
      (0, _jquery2.default)('.search-box-modal .form-control').focus();
    } else {
      $html.removeClass('modal-open');
    }
  });

  (0, _jquery2.default)('.search-box-modal .close').click(function (e) {
    e.preventDefault();
    search_box_close();
  });

  // Close the menu when ESC is pressed
  (0, _jquery2.default)(document).keyup(function (e) {
    if (e.keyCode == 27) {
      var $search_toggle = (0, _jquery2.default)('.search-toggle');

      if ($search_toggle.hasClass('open')) {
        search_box_close();
      }
    }
  });

  function search_box_close() {
    var $html = (0, _jquery2.default)('html');
    (0, _jquery2.default)('.search-toggle').removeClass('open');
    (0, _jquery2.default)('.search-box-modal').removeClass('visible');
    $html.removeClass('modal-open');
  }
}

}).call(this,typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}],8:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.timeline = timeline;
/* globals TL drupalSettings */

function timeline() {
  if (typeof TL !== 'undefined') {
    var embed = document.getElementById('timeline-embed');

    var options = {
      debug: false,
      optimal_tick_width: 600,
      base_class: 'sawi-timeline',
      language: typeof drupalSettings != 'undefined' ? drupalSettings.language : 'fr',
      timenav_height_percentage: 50,
      marker_height_min: 47,
      marker_padding: 10,
      start_at_slide: 1,
      initial_zoom: 5
    };

    // Base timeline height of slide
    var slide_height = 300;

    if (typeof drupalSettings !== 'undefined' && typeof drupalSettings.sawi_site.timeline !== 'undefined') {

      var max_stacked = overlapse(drupalSettings.sawi_site.timeline.events);
      options.timenav_height_min = max_stacked * options.marker_height_min + options.marker_padding * 10;

      // Set the embed height
      embed.style.height = options.timenav_height_min + slide_height + 'px';

      // Select the most closest match to now
      var target_date = new Date(); // set the current date you want as your start date
      for (var x in drupalSettings.sawi_site.timeline.events) {

        // Warning, month in JS start with 0
        var slide_date = new Date(drupalSettings.sawi_site.timeline.events[x].start_date.year, drupalSettings.sawi_site.timeline.events[x].start_date.month - 1, drupalSettings.sawi_site.timeline.events[x].start_date.day);

        if (slide_date < target_date) options.start_at_slide++;
      }

      new TL.Timeline('timeline-embed', drupalSettings.sawi_site.timeline, options);
    } else {
      // Parameter used to avoid caching
      new TL.Timeline('timeline-embed', '../build/json/timeline.json?v=' + Math.random(), options);
    }
  }
}

/**
 * Calculate the maximum overlapsed element at same time.
 *
 * Warning, month in JS start with 0.
 *
 * @return int
 *   Maximum of stacked element.
 */
function overlapse(events) {
  var max_stacked = 1;

  // Get first date.
  var first = events[0];
  var start = new Date(first.start_date.year, first.start_date.month - 1, first.start_date.day);

  // Get last date.
  var last = events.slice(-1)[0];
  var end = new Date(last.end_date.year, last.end_date.month - 1, last.end_date.day);

  // Loop for each day an calculate number of event during this one
  // and finaly save the maxmimum.
  while (start <= end) {
    var stacked = 0;

    // For this day, loop throught each events to detecte stack.
    for (var x in events) {
      var event_date_start = new Date(events[x].start_date.year, events[x].start_date.month - 1, events[x].start_date.day);

      var event_date_end = new Date(events[x].end_date.year, events[x].end_date.month - 1, events[x].end_date.day);

      if (start >= event_date_start && start <= event_date_end) {
        stacked++;
      }
    }

    // Save the maxmium
    if (stacked > max_stacked) {
      max_stacked = stacked;
    }

    // date increase by 1 day
    start = new Date(start.setDate(start.getDate() + 1));
  }

  return max_stacked;
}

},{}],9:[function(require,module,exports){
(function (global){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.video = video;

var _jquery = (typeof window !== "undefined" ? window['jQuery'] : typeof global !== "undefined" ? global['jQuery'] : null);

var _jquery2 = _interopRequireDefault(_jquery);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function video() {
  var screenWidth = (0, _jquery2.default)(window).width();

  if (screenWidth < 800) {
    (0, _jquery2.default)('.jumbotron-sawi video').removeAttr('autoplay').on('click', function () {
      (0, _jquery2.default)(this).get(0).play();
    });
  }
}

}).call(this,typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}]},{},[3])//# sourceMappingURL=bundle.js.map
