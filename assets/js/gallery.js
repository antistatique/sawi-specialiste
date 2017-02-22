import $ from 'jquery';

/*global PhotoSwipe PhotoSwipeUI_Default */

export function gallery () {

  // Define click event on gallery item
  $('.gallery').on('click', 'a', function(event){

    // Prevent location change
    event.preventDefault();

    // Generate the tree
    const container = [];
    $('.gallery [itemprop="associatedMedia"]').each(function(){
      let $this = $(this);
      container.push({
        src: $this.find('a').attr('href'),
        w: $this.find('a').data('width'),
        h: $this.find('a').data('height')
      });
    });

    // Define object and gallery options
    let $pswp = $('.pswp'),
        $share_btn = $pswp.find('.pswp__button--share'),
        options = {
          index: $(this).data('index'),
          bgOpacity: 0.85,
          showHideOpacity: true,
          shareEl: true,
          shareButtons: [{id: 'download', label: $share_btn.data('downloadLabel'), url:'{{raw_image_url}}', download:true}]
        };

    // Initialize PhotoSwipe
    let gallery = new PhotoSwipe($pswp[0], PhotoSwipeUI_Default, container, options);
    gallery.init();
  });
}
