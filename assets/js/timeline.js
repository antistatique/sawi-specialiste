/* globals TL */

export function timeline () {

  const options = {
    debug: true,
    optimal_tick_width: 300,
    base_class: 'sawi-test',
    language: 'fr',
    timenav_height: 250,
    marker_height_min: 40,
    marker_padding: 10
  };

  if (typeof TL !== 'undefined') {
    if (typeof drupalSettings !== 'undefined') {
      const timeline = new TL.Timeline('timeline-embed', drupalSettings.sawi_site.timeline, options);
    }
    else {
      const timeline = new TL.Timeline('timeline-embed', '../build/json/timeline.json?url='+Math.random(), options);
    }
  }
}
