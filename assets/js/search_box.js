import $ from 'jquery';

export function search_box () {
  $('.search-toggle').click(function(e){
    $(this).toggleClass('open');
    $('.search-box-modal').toggleClass('visible');

    if($(this).hasClass('open')){
      $('html').addClass('modal-open');
      $('.search-box-modal .form-control').focus();
    }else {
      $('html').removeClass('modal-open');
    }

    e.preventDefault();
  });

  $('.search-box-modal .close').click(function(e){
    $('.search-toggle').removeClass('open');
    $('.search-box-modal').removeClass('visible');
    $('html').removeClass('modal-open');
    e.preventDefault();
  });
}
