/*global noUiSlider */

export function rangeslider () {

  // /////////////////////////////////////////////////////////////////////////////////////
  // vars
  const rangeSliders = document.querySelectorAll('.input-rangeslider-range');

  // /////////////////////////////////////////////////////////////////////////////////////
  // binding
  if (rangeSliders != null) {

    // Loop on NodeList compatible all browsers (IE10+)
    [].forEach.call(rangeSliders, (rangeSlider) => {
      noUiSlider.create(rangeSlider, {
        start: parseInt(rangeSlider.getAttribute('data-start')),
        step: 1,
        // Disable animation on value-setting,
        // so the sliders respond immediately.
        animate: false,
        range: {
          min: parseInt(rangeSlider.getAttribute('data-min')),
          max: parseInt(rangeSlider.getAttribute('data-max'))
        }
      });

      const rangeSliderInput = document.querySelector('input[name="'+rangeSlider.getAttribute('data-input')+'"]');
      rangeSlider.noUiSlider.on('update', function(values, handle){
        const rangeSliderInput = document.querySelector('input[name="'+this.target.getAttribute('data-input')+'"]');
        rangeSliderInput.value = Math.round(values[handle]);

        if (this.target.getAttribute('data-input-percent') != null) {
          const rangeSliderInputPercent = document.querySelector('input[name="'+this.target.getAttribute('data-input-percent')+'"]');
          const percent = rangeSliderInput.value / this.target.getAttribute('data-max') * 100;
          rangeSliderInputPercent.value = Math.round(percent);
        }
      });

      rangeSlider.noUiSlider.on('slide', function(values, handle){
        const linkedSlider = document.querySelector('.'+this.target.getAttribute('data-linked-slider'));
        if (linkedSlider != null && typeof linkedSlider.noUiSlider !== 'undefined') {
          crossUpdate(values[handle], linkedSlider);
        }
      });

      rangeSliderInput.addEventListener('blur', function () {
        const rangeSlider = document.querySelector('[data-input="'+this.getAttribute('name')+'"]');

        if (this.value > parseInt(rangeSlider.getAttribute('data-max'))) {
          this.value = rangeSlider.getAttribute('data-max');
        }

        if (this.value < parseInt(rangeSlider.getAttribute('data-min'))) {
          this.value = rangeSlider.getAttribute('data-min');
        }

        rangeSlider.noUiSlider.set(this.value);
        const linkedSlider = document.querySelector('.'+rangeSlider.getAttribute('data-linked-slider'));
        if (linkedSlider != null && typeof linkedSlider.noUiSlider !== 'undefined') {
          crossUpdate(this.value, linkedSlider);
        }
      });
    });
  }

  function crossUpdate ( value, slider ) {
    const total = slider.getAttribute('data-max') - value;
    slider.noUiSlider.set(total);
    const rangeSliderInput = document.querySelector('input[name="'+slider.getAttribute('data-input')+'"]');
    rangeSliderInput.value = total ;
  }

}
