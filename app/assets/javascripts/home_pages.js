// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
     var child = $(".resume_white");
    $(".resume_red").hover(function(){
       
       child.animate({"top": '0px',"left": '0px'},500,function(){
            $(this).css({"opacity": "0.4" });
           $(".resume_red p").show();
        });
      },
   function(){ $(".resume_red p").hide(), child.animate({"top": '53.75px',"left": '105px'},500,function(){
            $(this).css({"opacity": "1" });
        });
   });

});