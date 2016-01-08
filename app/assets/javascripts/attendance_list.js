$(document).ready(function(){

  $(".attendance-button h3").on('click',"a", function(event){
    // event.preventDefault();
    var prayer = $(this).attr("id");
    var link = $(this).attr("href");

    var ajaxRequest = $.ajax({
      url: link,
      method: "Post",
      data: { prayer: prayer}
    })
  });

  $(".layout-yield ").on("click",".choir-attendance-index a", function(event){
    event.preventDefault();
    alert($(this))
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