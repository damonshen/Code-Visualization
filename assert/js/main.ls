console.log \hello

$ ->
  $ '#code div' .each (index)->
    $ this .html "#index test"
    $ this .css \background, \blue


