var url = '/show.html'

$(document).ready(function(){
	$(".projects_link").on('click',function(event){
		// might need to add if statement to see if div is empty, if not..else. Might need to make
		// this into a function
		var value = $(event.target).attr('value');
		event.preventDefault();
			
			$.get(url, function(data){
				if (value === "ruby_projects"){
					var div = $(data).filter("#ruby_projects")
					$('.projects_list').html(div);

				}

				else if(value === "ruby_on_rails_projects"){
					var div = $(data).filter("#ruby_on_rails_projects");
					$('.projects_list').html(div);

				}

				else
				{
					var div = $(data).filter("#javaScript_projects");
					$('.projects_list').html(div);

				}
			


			});



		
	


	});






});
