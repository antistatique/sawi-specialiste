import { menu_toggle } from './menu_toggle.js';
import { timeline } from './timeline.js';
import { search_box } from './search_box.js';

(function(){
  menu_toggle();
  search_box();

  window.addEventListener('load', function() {
    timeline();
  });
}());
