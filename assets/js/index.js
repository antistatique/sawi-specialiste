import { menu_toggle } from './menu_toggle.js';
import { timeline } from './timeline.js';
import { search_box } from './search_box.js';
import { googlemap } from './googlemap.js';
import { gallery } from './gallery.js';

(function(){
  menu_toggle();
  search_box();
  gallery();

  window.addEventListener('load', function() {
    timeline();
    googlemap();
  });
}());
