$(document).ready(function() {

  // show single shirt above index page
  $('.container').on('click', '.show-shirt-link', function(event) {
    event.preventDefault();
    route = ($(this).attr('href'))
    ajaxRequest = $.ajax({
                    method: "GET",
                    url: route
                  })
    ajaxRequest.done(function(results) {
      $('.popup').append(results).show('slow');
    });
  })

  // hide show single shirt container on index page
  $(document).on('click', '#close', function(event) {
    event.preventDefault();
    $('.popup').empty().hide('slow');
  });

  // show add to card page from index page
  $(document).on('click', '#home-page-cart', function(event) {
    event.preventDefault();
    route = $('#home-page-cart').closest('a').attr('href')
    ajaxRequest = $.ajax({
                    method: "GET",
                    url: route
                  });
    ajaxRequest.done(function(results) {
      $('.popup').empty()
      $('.popup').append(results).show('slow');
    })
  })

});
