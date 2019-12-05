import "bootstrap";
import "jquery";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import "select2";
import "select2/dist/css/select2.css";

var jumboHeight = $('.jumbotron').outerHeight();
function parallax(){
    var scrolled = $(window).scrollTop();
    $('.bg').css('height', (jumboHeight-scrolled) + 'px');
}

$(window).scroll(function(e){
    parallax();
});

var scrollWindow = function() {
  $(window).scroll(function(){
    var $w = $(this),
        st = $w.scrollTop(),
        navbar = $('.ftco_navbar'),
        sd = $('.js-scroll-wrap');

    if (st > 150) {
      if ( !navbar.hasClass('scrolled') ) {
        navbar.addClass('scrolled');
      }
    }
    if (st < 150) {
      if ( navbar.hasClass('scrolled') ) {
        navbar.removeClass('scrolled sleep');
      }
    }
    if ( st > 350 ) {
      if ( !navbar.hasClass('awake') ) {
        navbar.addClass('awake');
      }

      if(sd.length > 0) {
        sd.addClass('sleep');
      }
    }
    if ( st < 350 ) {
      if ( navbar.hasClass('awake') ) {
        navbar.removeClass('awake');
        navbar.addClass('sleep');
      }
      if(sd.length > 0) {
        sd.removeClass('sleep');
      }
    }
  });
};
scrollWindow();
var OnePageNav = function() {
  $(".smoothscroll[href^='#'], #ftco-nav ul li a[href^='#']").on('click', function(e) {
     e.preventDefault();

     var hash = this.hash,
         navToggler = $('.navbar-toggler');
     $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 700, 'easeInOutExpo', function(){
      window.location.hash = hash;
    });
    if ( navToggler.is(':visible') ) {
      navToggler.click();
    }
  });
  $('body').on('activate.bs.scrollspy', function () {
    console.log('nice');
  })
};
OnePageNav();
initMapbox();


document.querySelectorAll(".advanced_search").forEach((inputField) => {
  $(inputField).select2({width: "140px"});
})

$(".advanced_search").select2({
    placeholder: "Select an option"
});


