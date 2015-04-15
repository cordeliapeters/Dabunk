// pg search

$(document).ready(function() {
  console.log("ready");

  $(".search-bar").on("keyup", function(event){
    // event.preventDefault();

    var data = $(this).val();
    console.log(data);
    url = "/colleges/search/" + data;
    $.ajax({
      url: url,
      type: "get",
      dataType: "json"
    }).done(function(response){
      console.log("in the done");
      console.log(response);
      availableTags = [];
      for (var i = 0; i < response.length; i++){
        availableTags.push(response[i].name);
      }
      $(".search-bar").autocomplete({
        source: availableTags
      });

    }).fail(function(){
      console.log("fail")
    })
  });
})