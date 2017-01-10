import $ from 'jquery';

export function menu_toggle () {
  $(document).on('click', '.menu-toggle, .menu-access .menu', function(e){
    const $this = $(this);

    menu_toggle();

    // Open the menu when using skip-link
    if ($this.attr('href') != '#main-navigation') {
      e.preventDefault();
    }
  });

  // Close the menu when ESC is pressed
  $(document).keyup(function(e) {
    if (e.keyCode == 27) {
      const $body = $(document.body);
      if ($body.hasClass('menu-push-toright')) {
        menu_toggle();
      }
    }
  });

  function menu_toggle() {
    const $hamburger = $('header .hamburger');
    const $body      = $(document.body);
    const $menu      = $('.header-menu');
    const $overlay   = $('.body-overlay');

    $hamburger.toggleClass('is-active');
    $body.toggleClass('menu-push-toright');
    $menu.toggleClass('menu-open');
    $overlay.toggleClass('visible');
  }
}
