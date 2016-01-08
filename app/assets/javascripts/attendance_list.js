$(document).ready(function(){

  $(".attendance-button h3").on('click',"a", function(event){
    alert("hey here")
    var link = $(this).attr("href");

    var ajaxRequest = $.ajax({
      url: link,
      method: "Post",
    })
  });
});