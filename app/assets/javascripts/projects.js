

$(document).ready(function(){
	$(".projects_link").on('click',function(event){
		var url = $(event.target).attr("href");

		var value = $(event.target).attr('value');
		event.preventDefault();
			
			$.get(url, function(data){
					var div = $(data).filter(value)
					$('.projects_list').html(div).css("border-style", "solid");
			


			});



		
	


	});






});
