import { menu_toggle } from './menu_toggle.js';
import { timeline } from './timeline.js';
import { search_box } from './search_box.js';
import { googlemap } from './googlemap.js';
import { gallery } from './gallery.js';
import { rangeslider } from './rangeslider.js';
import { input_files } from './input_files.js';
import { video } from './video.js';

(function(){
  menu_toggle();
  search_box();
  gallery();
  rangeslider();
  input_files();
  video();

  window.addEventListener('load', function() {
    timeline();
    googlemap();
  });
}());
