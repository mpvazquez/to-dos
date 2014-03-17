var task;
var counter = 0;

$(document).ready(function() {

  $('form').submit(function(e) {
  e.preventDefault();
  var input = $("input").val();

  $.ajax({
    type: "POST",
    url: "tasks",
    data: {thing_to_do: input}
  });

  var li = $("<li>").appendTo("ul");
  li.addClass("").data("todo-id");
  li.text(
    $.getJSON("/create", function(response) {
      task = response;
    })
  );

  counter++;
});
});

// $.getJSON("create?task=" + task, function(response) {
//       console.log(response);
//     });