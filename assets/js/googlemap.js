/* globals google */

import $ from 'jquery';

export function googlemap () {

  const $map = $('.google-map');
  if ($map.length > 0){
    let position = {'lat': parseFloat($map.data('latitude')), 'lng': parseFloat($map.data('longitude'))};
    let marker_icon = $map.data('marker');

    // Create a map object and specify the DOM element for display.
    const map = new google.maps.Map($map.get(0), {
      center: position,
      scrollwheel: true,
      zoom: 15,
      disableDefaultUI: true
    });

    map.set('styles', [
      {
        'featureType': 'all',
        'elementType': 'labels',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'administrative.country',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'administrative.locality',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'administrative.neighborhood',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'administrative.land_parcel',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'off'
          }
        ]
      },
      {
        'featureType': 'landscape',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'color': '#f3f4f4'
          }
        ]
      },
      {
        'featureType': 'landscape.man_made',
        'elementType': 'geometry',
        'stylers': [
          {
            'weight': 0.9
          },
          {
            'visibility': 'off'
          }
        ]
      },
      {
        'featureType': 'poi',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'off'
          }
        ]
      },
      {
        'featureType': 'poi',
        'elementType': 'labels.text',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'poi.government',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'poi.park',
        'elementType': 'geometry.fill',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'color': '#83cead'
          }
        ]
      },
      {
        'featureType': 'poi.school',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'off'
          }
        ]
      },
      {
        'featureType': 'road',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'color': '#ffffff'
          }
        ]
      },
      {
        'featureType': 'road',
        'elementType': 'geometry',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'saturation': '1'
          },
          {
            'gamma': '2.65'
          }
        ]
      },
      {
        'featureType': 'road',
        'elementType': 'geometry.stroke',
        'stylers': [
          {
            'visibility': 'off'
          }
        ]
      },
      {
        'featureType': 'road',
        'elementType': 'labels',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'road',
        'elementType': 'labels.text',
        'stylers': [
          {
            'visibility': 'off'
          }
        ]
      },
      {
        'featureType': 'road.highway',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'color': '#fee379'
          }
        ]
      },
      {
        'featureType': 'road.arterial',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'simplified'
          },
          {
            'color': '#fee379'
          }
        ]
      },
      {
        'featureType': 'road.local',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'lightness': '1'
          }
        ]
      },
      {
        'featureType': 'road.local',
        'elementType': 'labels.text',
        'stylers': [
          {
            'lightness': '-3'
          },
          {
            'color': '#887f7f'
          },
          {
            'weight': '0.25'
          }
        ]
      },
      {
        'featureType': 'transit',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          }
        ]
      },
      {
        'featureType': 'transit.line',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'simplified'
          }
        ]
      },
      {
        'featureType': 'water',
        'elementType': 'all',
        'stylers': [
          {
            'visibility': 'on'
          },
          {
            'color': '#7fc8ed'
          }
        ]
      }
    ]);

    let description = '<div class="container-gmap">'+
        '<h5>'+$map.data('title')+'</h5>'+
        '<p>' +
          $map.data('address') + '<br />' +
          $map.data('npa') + ' ' + $map.data('city') + '<br />' +
        '</p>' +
        '</div>';

    const infowindow = new google.maps.InfoWindow({
      content: description
    });

    const marker = new google.maps.Marker({
      position: position,
      map: map,
      icon: marker_icon
    });

    infowindow.open(map, marker);
    marker.addListener('click', function() {
      infowindow.open(map, marker);
    });
  }
}
