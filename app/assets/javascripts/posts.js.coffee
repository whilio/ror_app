# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $.ajax '/comments_by_post/' + gon.post_id + '.json',
    type: 'GET',
    success: (data) ->
      $("div#comments-block").html(JST['comments']({comments: data}))

  $("a#ajax_submit").click ->
    $.ajax '/comments.json',
      type: 'POST',
      data:
        comment:
          title: $("input#comment_title")[0].value,
          content: $("textarea#comment_content")[0].value,
      success: () ->
        $.ajax '/comments_by_post/' + gon.post_id + '.json',
          type: 'GET',
          success: (data) ->
            $("div#comments-block").html(JST['comments']({comments: data}))
