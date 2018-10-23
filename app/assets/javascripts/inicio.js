//= require 'vegas.min.js'
//= require 'wow.min.js'



 /* jQuery Pre loader
  -----------------------------------------------*/
$(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets    
});


$(document).ready(function() {
    var img1 = "<%= asset_path('./images/imagen-carrusel-2.jpg') %>";
  /* Home Slideshow Vegas
  -----------------------------------------------*/
  $(function() {
    $('body').vegas({
        slides: [
            { src: 'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a53f6ccb2fccd80ae7f6c6af8f289319&auto=format&fit=crop&w=750&q=80' },
            { src: 'https://images.unsplash.com/photo-1529007196863-d07650a3f0ea?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c38fa704446c7fba6c7872e095c76679&auto=format&fit=crop&w=750&q=80' },         
            { src: 'https://images.unsplash.com/photo-1506377872008-6645d9d29ef7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=7ecbc480a596afc12a416f1269b92f88&auto=format&fit=crop&w=750&q=80' },         
        ],
        timer: false,
        transition: [ 'zoomOut', ]
    });
  });


   /* Back top
  -----------------------------------------------*/
    $(window).scroll(function() {
        if ($(this).scrollTop() > 200) {
        $('.go-top').fadeIn(200);
        } else {
          $('.go-top').fadeOut(200);
        }
        });   
        // Animate the scroll to top
      $('.go-top').click(function(event) {
        event.preventDefault();
      $('html, body').animate({scrollTop: 0}, 300);
      })
      

  /* wow
  -------------------------------*/
  new WOW({ mobile: false }).init();

  });
