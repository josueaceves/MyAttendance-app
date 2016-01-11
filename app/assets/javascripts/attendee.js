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
      if(response.points == 3){
        alert("got in the if statement")
        $("choir-attendance-index a").siblings.remove();
        // ("<i class='fa fa-check fa-lg' style='float: right; margin-right:1em;'></i></a>")
      }else if(response.points == 2){
      alert("got in the if statement");
        $("div[id=" + id + "] div choir-attendance-index").text("<i class='fa fa-clock-o fa-lg' style='float: right; margin-right:1em;'></i>")
      }else if(response.points == 0){
      alert("got in the if statement");
        $("div[id=" + id + "] div choir-attendance-index").text("<i class='fa fa-times fa-lg' style='float: right; margin-right:1em;'></i>")
      };
    });
  });
});