$(document).ready(function(){

	$(".choir-attendance-index").on("click",".att-list-button a", function(event){
		event.preventDefault();
		var id = $(this).attr("href");
		$("#" + id ).toggle();
	});
});