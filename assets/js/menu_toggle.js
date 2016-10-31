import $ from 'jquery';

export function menu_toggle () {
  $('.menu-toggle').click(function(e){
    e.preventDefault();
    $(this).toggleClass('open');
  });
}
