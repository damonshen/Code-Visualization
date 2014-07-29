(function(){
  var styleCode;
  console.log('hello');
  styleCode = function(element, threshold){
    var cor, nextElement, corString, nextCor;
    cor = $(element).attr('correlation');
    cor = parseFloat(cor);
    nextElement = $(element).next();
    corString = $(nextElement).attr('correlation');
    nextCor = parseFloat(corString);
    if (cor !== void 8 && !isNaN(nextCor)) {
      $(element).removeClass();
      if (cor >= threshold && nextCor >= threshold) {
        return $(element).addClass('green');
      } else if (cor < threshold && nextCor < threshold) {
        return $(element).addClass('red');
      } else if (cor >= threshold && nextCor < threshold) {
        return $(element).addClass('green-red');
      } else if (cor < threshold && nextCor >= threshold) {
        return $(element).addClass('red-green');
      }
    } else {
      $(element).removeClass();
      if (cor >= threshold) {
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
        return $('#code div').each(function(index){
          return styleCode(this, ui.value);
        });
      }
    };
    $('#slider').slider(sliderOption);
    val = $('#slider').slider('value');
    $('#amount').val(val);
    return $('#code div').each(function(index){
      return styleCode(this, val);
    });
  });
}).call(this);
