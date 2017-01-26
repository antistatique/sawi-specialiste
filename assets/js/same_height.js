import $ from 'jquery';

export function same_height () {

  $('.same-height-group').each(function() {
    const $this = $(this);
    const $same_height_divs = $this.find('.same-height');

    let max_height = 0;
    $same_height_divs.each(function() {
      max_height = Math.max(max_height, $(this).outerHeight());
    });

    $same_height_divs.css({ height: max_height + 'px' });
  });
}
