/* globals TL drupalSettings */

export function timeline () {
  const options = {
    debug: true,
    optimal_tick_width: 300,
    base_class: 'sawi-timeline',
    language: typeof drupalSettings != 'undefined' ? drupalSettings.language : 'fr',
    timenav_height: 250,
    marker_height_min: 40,
    marker_padding: 10
  };

  if (typeof TL !== 'undefined') {
    if (typeof drupalSettings !== 'undefined' && typeof drupalSettings.sawi_site.timeline_url !== 'undefined') {
      const timeline = new TL.Timeline('timeline-embed', drupalSettings.sawi_site.timeline_url, options);
    }
    else {
      // Parameter used to avoid caching
      const timeline = new TL.Timeline('timeline-embed', '../build/json/timeline.json?v='+Math.random(), options);
    }
  }
}
