$(document).ready(function() {

  $('.vote-button').on('click', function(event) {

    event.preventDefault();

    console.log("Inside the click function");
    console.log(this);
    console.log(this.href);

    $.ajax({
      url: this.href,
      type: 'GET',
      // dataType: 'JSON',
      data: $(this).serialize()
    }).done(function(data) {
      console.log(data);
      console.log("ajax success");
    }).fail(function() {
      console.log("ajax fail");
    }).always(function() {
      console.log("ajax completed");
    });

  })
});

