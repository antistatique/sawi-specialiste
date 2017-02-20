import $ from 'jquery';

export function search_box () {
  $('.search-toggle').click(function(e){
    e.preventDefault();
    const $html = $('html');

    $(this).toggleClass('open');
    $('.search-box-modal').toggleClass('visible');

    if($(this).hasClass('open')){
      $html.addClass('modal-open');
      $('.search-box-modal .form-control').focus();
    }else {
      $html.removeClass('modal-open');
    }
  });

  $('.search-box-modal .close').click(function(e){
    e.preventDefault();
    search_box_close();
  });

  // Close the menu when ESC is pressed
  $(document).keyup(function(e) {
    if (e.keyCode == 27) {
      const $search_toggle = $('.search-toggle');

      if ($search_toggle.hasClass('open')) {
        search_box_close();
      }
    }
  });

  function search_box_close() {
    const $html = $('html');
    $('.search-toggle').removeClass('open');
    $('.search-box-modal').removeClass('visible');
    $html.removeClass('modal-open');
  }
}
