import $ from 'jquery';

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

  const timeline = new TL.Timeline('timeline-embed', 'https://docs.google.com/spreadsheets/d/1YfRcZiOeuq28RaxmxxHssYET6fgjALgI9Nygk8_cwo8/pubhtml', options);

  console.log(timeline);
}
