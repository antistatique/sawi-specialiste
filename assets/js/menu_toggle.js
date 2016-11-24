import $ from 'jquery';

export function menu_toggle () {
  $(document).on('click', '.menu-toggle', function(e){
    e.preventDefault();

    const $this = $(this);
    const $hamburger = $this.find('.hamburger');
    const $body = $(document.body);
    const $menu = $('.header-menu');
    const $overlay = $('.body-overlay');

    $hamburger.toggleClass('is-active');
    $body.toggleClass('menu-push-toright');
    $menu.toggleClass('menu-open');
    $overlay.toggleClass('visible');
  });
}
