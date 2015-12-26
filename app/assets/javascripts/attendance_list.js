$(document).ready(function(){

  $(".attendance-button h3").on('click',"a", function(event){
    event.preventDefault();
    var prayer = $(this).attr("id");
    var link = $(this).attr("href");
    $(".layout-yield").empty();
    var ajaxRequest = $.ajax({
      url: link,
      method: "Post",
      data: {prayer: prayer}
    });
    ajaxRequest.done(function(response){
    alert(response)
      $(".layout-yield").append(response);
    })
  });

  $(".layout-yield ").on("click",".choir-attendance-index a", function(event){
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