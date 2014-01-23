

$(document).ready(function(){
	$(".projects_link").on('click',function(event){
		clearProjectList();
		var url = $(event.target).attr("href");
		var value = $(event.target).attr('value');
		event.preventDefault();
			
			$.get(url, function(data){
					var div = $(data).filter(value)
					$('.projects_list').html(div).css("border-style", "solid");
			});
	});

	$(".projects_list").on('click', ".single_project",function(event){
		var url = $(event.target).attr("href");
		event.preventDefault();

			$.get(url, function(data){
				var div = $(data).filter(".project")
				$('.project_description').html(div).css("border-style", "solid");
			});
	});

	function clearProjectList(){
		$('.project_description').empty();
		$('.project_description').css("border-style", "none");
	}

});

