import $ from 'jquery';

export function video () {
  const screenWidth = $(window).width();

  if (screenWidth < 800){
    $('video').removeAttr('autoplay');
  } else {
    $('video').attr('autoplay');
  }
}
