// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
    $(".parent").hover(function(){
        $(".child",this).animate({"top": '0px',"left": '0px'},500,function(){
            $(this).css({"opacity": "0.4" }).prev().show(); 
        });
      },
   function(){ $(".child",this).animate({"top": '50px',"left": '50px'},500,function(){
            $(this).css({"opacity": "1" }).prev().hide();       
        });
   });

});