$(document).ready(function(){

	$(".choir-attendance-index").on("click",".att-list-button a", function(event){
		event.preventDefault();
		var id = $(this).attr("href");
		$("#" + id ).toggle();
	});

	$(".choir-attendance-index").on("click","a", function(event){
		event.preventDefault();
		var id = $(this).attr('id')
		var link = $(this).attr('href')
		var data = $(this).attr("class");
		$("div [id="+ id + "]").remove()
		var ajaxRequest = $.ajax({
			url: link,
			method: "Post",
			data: data
		})
	});
});