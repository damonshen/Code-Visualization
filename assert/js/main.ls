console.log \hello

styleCode = (element, threshold)->
  cor = $ element .attr \correlation
  if cor != void
    cor = parseFloat(cor)
    $ element .removeClass!
    if cor > threshold
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
        $ \div .each (index)->
          styleCode this, ui.value
  $ \#slider .slider sliderOption
  val = $ \#slider .slider \value
  $ \#amount .val val
  $ '#code div' .each (index)->
    $ this .html "#index test"
    $ this .css \background, \blue
  $ \div .each (index)->
    styleCode(this)
