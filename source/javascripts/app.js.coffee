#= require vendor/smooth-scroll

smoothScroll.init()

fixedHeaderPosition = 602
fixedHeaderClass = 'shown'
fixedHeader = document.querySelector '.header--fixed'
isHeaderFixed = ->
  if window.scrollY > fixedHeaderPosition
    fixedHeader.classList.add fixedHeaderClass
  else
    fixedHeader.classList.remove fixedHeaderClass

window.addEventListener 'scroll', (e)->
  isHeaderFixed()
