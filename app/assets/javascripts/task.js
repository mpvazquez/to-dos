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
});
});

function taskCreator() {
  var li = $("<li>").appendTo("ul");
  li.addClass("").data("todo-id");
  counter++;
}

// $.getJSON("create?task=" + task, function(response) {
//       console.log(response);
//     });