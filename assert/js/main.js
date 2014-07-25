(function(){
  console.log('hello');
  $(function(){
    $('#code div').each(function(index){
      $(this).html(index + " test");
      return $(this).css('background', 'blue');
    });
    return $('div').each(function(index){
      var cor;
      cor = $(this).attr('correlation');
      if (cor !== void 8) {
        cor = parseFloat(cor);
        $(this).removeClass();
        if (cor > 0.5) {
          return $(this).addClass('green');
        } else {
          return $(this).addClass('red');
        }
      }
    });
  });
}).call(this);
