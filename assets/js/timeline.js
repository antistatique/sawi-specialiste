/* globals TL drupalSettings */

export function timeline () {
  if (typeof TL !== 'undefined') {

    const options = {
      debug: true,
      optimal_tick_width: 300,
      base_class: 'sawi-timeline',
      language: typeof drupalSettings != 'undefined' ? drupalSettings.language : 'fr',
      timenav_height: 250,
      marker_height_min: 40,
      marker_padding: 10,
      start_at_slide: 1
    };

    if (typeof drupalSettings !== 'undefined' && typeof drupalSettings.sawi_site.timeline !== 'undefined') {

      // Select the most closest match to now
      const target_date = new Date(); // set the current date you want as your start date
      for (const x in drupalSettings.sawi_site.timeline.events) {

        // Warning, month in JS start with 0
        let slide_date = new Date( drupalSettings.sawi_site.timeline.events[x].start_date.year, drupalSettings.sawi_site.timeline.events[x].start_date.month-1, drupalSettings.sawi_site.timeline.events[x].start_date.day);

        if (slide_date < target_date) options.start_at_slide++;
      }

      new TL.Timeline('timeline-embed', drupalSettings.sawi_site.timeline, options);
    }
    else {
      // Parameter used to avoid caching
      new TL.Timeline('timeline-embed', '../build/json/timeline.json?v='+Math.random(), options);
    }
  }
}
