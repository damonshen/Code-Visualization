console.log \hello

styleCode = (element, threshold)->

  #the correlation of the current API
  cor = $ element .attr \correlation
  cor = parseFloat cor
  #the correlation of next API
  nextElement = $ element .next!
  corString = $ nextElement .attr \correlation
  nextCor = parseFloat corString

  if cor != void and !isNaN nextCor

    $ element .removeClass!
    if cor >= threshold and nextCor >= threshold
      $ element .addClass \green
    else if cor < threshold and nextCor < threshold
      $ element .addClass \red
    else if cor >= threshold and nextCor < threshold
      $ element .addClass \green-red
    else if cor < threshold and nextCor >= threshold
      $ element .addClass \red-green
  #if the elemennt is the last of the set
  else
    $ element .removeClass!
    if cor >= threshold
      $ element .addClass \green
    else
      $ element .addClass \red



$ ->
  sliderOption =
    * min: -1
      max: 1
      value: 1
      step: 0.1
      slide: (event, ui)->
        $ \#amount .val ui.value
        #event trigger
        $ '#code div' .each (index)->
          styleCode this, ui.value
  $ \#slider .slider sliderOption
  val = $ \#slider .slider \value
  $ \#amount .val val
  $ '#code div' .each (index)->
    styleCode this, val
