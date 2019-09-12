
$(document).on('turbolinks:load', function() {
    $('.js-example-basic-multiple').select2();

    $(".order_submit").click(function (event) {
        var data = $('.items-select').val();
        $.ajax({        
            url: "/order_items",
            type: "POST",
            data: {
                items: data
            },
            success: function(data){
                $('.js-example-basic-multiple option:selected').remove();
            }
        });
    });
});
