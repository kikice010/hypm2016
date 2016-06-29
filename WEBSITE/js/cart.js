$(document).ready(function(){

  $( "#template_landmarks" ).load( "../template_landmarks.html", function() {
          $(".active:first").removeClass('active');
          $("#nav-cart").addClass('active');
      });


function create_cart_item(item){

    var cart_item = ('<tr class="cart_item-'+item.id+'"><td class="col col-md-4">'+
      '<img class="item-img img-responsive" src="'+item.path+'" alt="'+item.name+'"></td>'+
      '<td class="col col-md-4">'+item.name+'</td>'+
      '<td class="col col-md-2">'+item.price+'</td>'+
      '<td class="col col-md-2"><button type="button" id="remove-item-'+item.id+'" class="btn btn-default btn-sm">'+
      '<span class="glyphicon glyphicon-remove"></span> Remove</button></td></tr>');
    return cart_item;

  };


function fill_cart_information(items){

  var rootCartContainer = $('.cart-item-container');
  if(items.length==0){
    rootCartContainer.append("<th>No items in cart</th>");
  }
  else{
    for (var key in items) {
        if (items.hasOwnProperty(key)) {
        console.log(items[key]);
        rootCartContainer.append(create_cart_item(items[key]));
        document.getElementById ("remove-item-"+key).addEventListener ("click", remove_cart_item);
      }
    }
  }
};


function remove_cart_item(id){
  console.log(this.id.split("-")[2]);
  var id = this.id.split("-")[2];
  $.ajax({
    url:'http://hyp-telecom.ml/php/remove_from_cart.php',
    method:'GET',
    contentType: "application/json; charset=UTF-8",
    data: {'id':id},
    dataType:'json',
    success:function(data){
          console.log("Data after removing:");
          console.log(data); 
          $('.device-price-text').html(data.total_price);
          $('#cart-icon').text(data.total_items);
          $('.cart-item-container').empty(); 
          fill_cart_information(data.cart_items);
          },
    error: function(requestObject, error, errorThrown) {
          console.log("Error: "+errorThrown);
              $('.page-wrap .container').append(
                $('<p>Please check your internet connection</p>').addClass('error-msg'));
          }
    });

};

  $.ajax({
    url:'http://hyp-telecom.ml/php/get_cart.php',
    method:'GET',
    contentType: "application/json; charset=UTF-8",
    data: {},
    dataType:'json',
    success:function(data){
          console.log(data); 
          $('.device-price-text').html(data.total_price);
          fill_cart_information(data.cart_items);      
          },
    error: function(requestObject, error, errorThrown) {
          console.log("Error: "+errorThrown);
              $('.page-wrap .container').append(
                $('<p>Please check your internet connection</p>').addClass('error-msg'));
          }
    });

});
