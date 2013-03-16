console.log "hi"

class Bingo
  constructor: ->
    @shuffle = _.shuffle [1..75]
    @main = ko.observable(@shuffle.shift())
    @hist = ko.observableArray([@main()])

  change: =>
    @main(@shuffle.shift())
    @hist.push @main()

$ ->
  bingo = new Bingo
  ko.applyBindings bingo
