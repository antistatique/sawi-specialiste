import $ from 'jquery';

export function video () {
  const screenWidth = $(window).width();

  if (screenWidth < 800){
    $('.jumbotron-sawi video')
      .removeAttr('autoplay')
      .on('click', function () {
        $(this).get(0).play();
      });
  }
}
