$(document).on('turbolinks:load', function(){

    $("[data-do='select_language']").change(function() {
        window.location.href = '/languages/' + this.value
    })

});



