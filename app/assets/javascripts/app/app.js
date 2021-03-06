$(document).ready(function(){
  $('.parallax').parallax();

  var mn = $('#navbar');
      mns = "navbar-scrolled";

  $(window).scroll(function() {
    if( $(this).scrollTop() > 30 ) {
      mn.addClass(mns);
    } else {
      mn.removeClass(mns);
    }
  });

  var on = $('#sub-nav');
      ons = "sub-nav-scrolled";

  $(window).scroll(function() {
    if( $(this).scrollTop() > 30 ) {
      on.addClass(ons);
    } else {
      on.removeClass(ons);
    }
  });

  var pn = $('#navbar-project');
      pns = "navbar-project-scrolled";

  $(window).scroll(function() {
    if( $(this).scrollTop() > 0 ) {
      pn.addClass(pns);
    } else {
      pns.removeClass(pn);
    }
  });

  $("#modal-video").animatedModal({
    animatedIn:'zoomIn',
    animatedOut:'zoomOut',
    color:'#000000'
  });

  $("#modal-video-2").animatedModal({
    animatedIn:'zoomIn',
    animatedOut:'zoomOut',
    color:'#000000'
  });

  var url = $(".video-container").find("iframe").attr('src');

  $('.close-animatedModal').click(function() {
    $(".video-container").fadeOut().find("iframe").attr("src", "");
    $(".video-container").fadeIn().find("iframe").attr('src', url);
  });

  $('.anchor-scroll').anchorScroll({
    scrollSpeed: 800, // scroll speed
    offsetTop: 0, // offset for fixed top bars (defaults to 0)
    onScroll: function () {
      // callback on scroll start
    },
    scrollEnd: function () {
      // callback on scroll end
    }
  });
});
