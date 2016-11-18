import $ from 'jquery';

export function menu_toggle () {
  $(document).on('click', '.menu-toggle', function(e){
    e.preventDefault();

    const $this = $(this);
    const $body = $(document.body);
    const $menu = $('.header-menu');
    const $overlay = $('.body-overlay');

    $this.toggleClass('active');
    $body.toggleClass('menu-push-toright');
    $menu.toggleClass('menu-open');
    $overlay.toggleClass('visible');
  });
}
