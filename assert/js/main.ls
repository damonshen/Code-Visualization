console.log \hello

$ ->
  $ '#code div' .each (index)->
    $ this .html "#index test"
    $ this .css \background, \blue

  $ \div .each (index)->
    cor = $ this .attr \correlation
    if cor != void
      cor = parseFloat(cor)
      $ this .removeClass!
      if cor > 0.5
        $ this .addClass \green
      else
        $ this .addClass \red


