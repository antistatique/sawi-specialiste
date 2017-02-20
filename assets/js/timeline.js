/* globals TL drupalSettings */

export function timeline () {
  if (typeof TL !== 'undefined') {
    const embed = document.getElementById('timeline-embed');

    const options = {
      debug: false,
      optimal_tick_width: 600,
      base_class: 'sawi-timeline',
      language: typeof drupalSettings != 'undefined' ? drupalSettings.language : 'fr',
      timenav_height_percentage: 50,
      marker_height_min: 47,
      marker_padding: 10,
      start_at_slide: 1,
      initial_zoom: 5
    };

    // Base timeline height of slide
    const slide_height = 300;

    if (typeof drupalSettings !== 'undefined' && typeof drupalSettings.sawi_site.timeline !== 'undefined') {

      const max_stacked = overlapse(drupalSettings.sawi_site.timeline.events);
      options.timenav_height_min = max_stacked * options.marker_height_min + options.marker_padding * 10;

      // Set the embed height
      embed.style.height = options.timenav_height_min + slide_height + 'px';

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

/**
 * Calculate the maximum overlapsed element at same time.
 *
 * Warning, month in JS start with 0.
 *
 * @return int
 *   Maximum of stacked element.
 */
function overlapse(events) {
  let max_stacked = 1;

  // Get first date.
  const first = events[0];
  let start = new Date(first.start_date.year, first.start_date.month-1, first.start_date.day);

  // Get last date.
  const last = events.slice(-1)[0];
  const end = new Date(last.end_date.year, last.end_date.month-1, last.end_date.day);

  // Loop for each day an calculate number of event during this one
  // and finaly save the maxmimum.
  while (start <= end) {
    let stacked = 0;

    // For this day, loop throught each events to detecte stack.
    for (const x in events) {
      const event_date_start = new Date(events[x].start_date.year, events[x].start_date.month-1, events[x].start_date.day);

      const event_date_end = new Date(events[x].end_date.year, events[x].end_date.month-1, events[x].end_date.day);

      if (start >= event_date_start && start <= event_date_end) {
        stacked++;
      }
    }

    // Save the maxmium
    if (stacked > max_stacked) {
      max_stacked = stacked;
    }

    // date increase by 1 day
    start = new Date(start.setDate(start.getDate() + 1));
  }

  return max_stacked;
}
