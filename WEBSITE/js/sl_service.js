$(document).ready(function(){

	function createSLServiceContainer(sl_service){

		


		var slService=$.parseJSON(sl_service);

		// setting basic sl_service info
		$("#sl_breadcrumb").html(slService.name);
		
		$("#sl_name").html(slService.name);
		$("#sl_service_id").attr("src",".."+slService.image_path);
		$(".sl_service_description_text > p").html(slService.description);
		$(".act_rules_description_text").html(slService.activation_rules);
		$(".sl_service_price_text").html(slService.rates_discount_price);

		$("#add-cart").click(update_cart);

		// checking if there are liked devices 
		if(slService.devices!=='undefined'){
			
			fillLinkedDevices(slService.devices);
		}


	}




	function fillLinkedDevices(json_devices){


	 	var data;
		$.each(json_devices,function(index,data1){

		data=$.parseJSON(data1);
		
		//creating device element

		$(".linked_devices_description")
	         .append("<div class='col-sm-6 col-md-3'>"
	                +  "<div class='picture'>"
	                +        "<img class='center-block device-img img-responsive' src='.."+data.image_path+"' alt='"+data.name+"'/>"
	                +        "<div class='sl-service-name caption'><h4>"+data.name+"</h4>"
	                +           "<p><a href='./devices.html?id="+data.id+"' class='btn btn-primary' role='button'>See Details</a></p>"
	                +         "</div>"
	                +  "</div>"
	                +"</div>");

		});

	}

	function update_cart(){
		
		var name = $('#sl_name').text();
	    var path = $('#sl_service_id').attr("src");
	    var price = $('.sl_service_price_text').text();

	    $.ajax({
	      url:'http://hyp-telecom.ml/php/add_to_cart.php',
	      method:'GET',
	      contentType: "application/json; charset=UTF-8",
	      data: {'name':name,
	              'price':price,
	              'path':path
	      },
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

	}

	$( "#template_landmarks" ).load( "../template_landmarks.html", function() {
  				$(".active:first").removeClass('active');
  				$("#nav-smartlife").addClass('active');
	});

	
	var url_params = (window.location.search.replace("?", "")).split("=");

    if (typeof loadContent !== 'undefined' && url_params.length === 2) {

        loadContent(
            'http://hyp-telecom.ml/php/get_sl_service.php',
            'sl_service', $('#sl_service_container'), createSLServiceContainer, 
            {'id' : url_params[1] });
    }
    //Adding styles
        $('head').append('<link href="../css/sl_service.css" rel="stylesheet">');

});