(function(){
  var styleCode;
  console.log('hello');
  styleCode = function(element, threshold){
    var cor;
    cor = $(element).attr('correlation');
    if (cor !== void 8) {
      cor = parseFloat(cor);
      $(element).removeClass();
      if (cor > threshold) {
        return $(element).addClass('green');
      } else {
        return $(element).addClass('red');
      }
    }
  };
  $(function(){
    var sliderOption, val;
    sliderOption = {
      min: -1,
      max: 1,
      value: 1,
      step: 0.1,
      slide: function(event, ui){
        $('#amount').val(ui.value);
        return $('div').each(function(index){
          return styleCode(this, ui.value);
        });
      }
    };
    $('#slider').slider(sliderOption);
    val = $('#slider').slider('value');
    $('#amount').val(val);
    return $('div').each(function(index){
      return styleCode(this);
    });
  });
}).call(this);
