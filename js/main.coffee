---
# Front Matter comment for Jekyll
---

$(document).ready ->
	heroSize()
	return

$(window).load ->
	showContent()
	return

$(window).scroll (e) ->
	parallax()
	return

$(window).resize ->
	heroSize()
	return

parallax = ->
	scrolled = $(window).scrollTop()
	$(".hero").css "top", -(scrolled * 0.0315) + "rem"
	$(".hero .content").css "top", -(scrolled * -0.005) + "rem"
	$(".hero .content").css "opacity", 1 - (scrolled * .00175)
	$(".hero .bounce").css "opacity", 1 - (scrolled * .025)
	return

heroSize = ->
	$(".hero").css height: ($(window).height()) + "px"
	$(".parallax-content").css('margin-top', ($(window).height()) + "px")
	return

showContent = ->
	$(".page-content").addClass "load"
	return

$ ->
  $('a[href*=#]:not([href=#])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html,body').animate { scrollTop: target.offset().top }, 1000
        return false
    return
  return
