$(document).on('turbolinks:load', function () {
  // check if at static pages
  $('.static').ready(function () {
    // alert('run ajax on static pages only')
  })

  // check if at post pages
  $('.posts.show').ready(function () {
    // alert('run ajax on post pages only')
    $.get('/tags', function (data) {
      console.log(data)
    })

  })

})
