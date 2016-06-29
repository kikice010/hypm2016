$(document).ready(function(){

	$.ajax({
      url:'http://hyp-telecom.ml/php/get_cart_total_items.php',
      method:'GET',
      contentType: "application/json; charset=UTF-8",
      data: {},
      dataType:'json',
      success:function(data){
            console.log(data);
            var total_items = data;
            $('#cart-icon').text(total_items); //put the total num of items in cart
            },
      error: function(requestObject, error, errorThrown) {
            console.log("Error: "+errorThrown);
                $('.page-wrap .container').append(
                  $('<p>Please check your internet connection</p>').addClass('error-msg'));
            }
    });
});