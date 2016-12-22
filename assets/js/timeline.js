/* globals TL */

export function timeline () {
  console.log(drupalSettings.sawi_site.timeline);

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
      // Parameter used to avoid caching
      const timeline = new TL.Timeline('timeline-embed', '../build/json/timeline.json?v='+Math.random(), options);
    }
  }
}
