$(document).ready(function(){
 $(".layout-yield ").on("click",".choir-attendance-index a", function(event){
    event.preventDefault();
    var id = $(this).attr('id')
    var link = $(this).attr('href')
    var data = $(this).attr("class");

    var ajaxRequest = $.ajax({
      url: link,
      method: "get",
      data: data
    })
  });
})