$(document).ready(function(){

 $(".layout-yield").on("click",".choir-attendance-index a", function(event){
    event.preventDefault();
    event.stopImmediatePropagation();

    var id = $(this).attr('id');
    var link = $(this).attr('href');
    var option = $(this).attr("class");

    var ajaxRequest = $.ajax({
      url: link,
      method: "get",
      dataType: "JSON",
      data: {type: option} 
    });

    ajaxRequest.done(function(response){
        $("#"+id+" div .choir-attendance-index a[class="+option+"]").siblings().remove();
    });
  });
});









