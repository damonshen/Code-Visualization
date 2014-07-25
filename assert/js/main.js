(function(){
  console.log('hello');
  $(function(){
    return $('#code div').each(function(index){
      $(this).html(index + " test");
      return $(this).css('background', 'blue');
    });
  });
}).call(this);
