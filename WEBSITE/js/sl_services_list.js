$(document).ready(function(){

	function load_SL_Services(sl_services){

			//changing landmark active element to SL SErvice
			

			//Adding Jumbotron for each SL Service
			var sl_service=$.parseJSON(sl_services);

			// Jumbotron
			$("<div class='jumbotron col-md-12 ' id='sls"+sl_service.id+"'></div>").appendTo("#sl_services_container");
			// Jumbotron content
			$("#sls"+sl_service.id+"").css('background-image', 'url(..' + sl_service.image_path + ')');
			$("<h2>").html(""+sl_service.name).appendTo("#sls"+sl_service.id);
			$("<h4>").html(""+sl_service.description).appendTo("#sls"+sl_service.id);
			$("<button>")
				.html("More")
				.addClass("btn btn-success center-block")
				.click(function(){
					window.location.href = './sl_services_by_category.html?name='+sl_service.name;
				})
				.appendTo("#sls"+sl_service.id);
			// Jumbotron END
		return null;

	}

	$( "#template_landmarks" ).load( "../template_landmarks.html", function() {
  				$(".active:first").removeClass('active');
  				$("#nav-smartlife").addClass('active');
			});
	
	// load content from the server
    // loadContent( url,  rootJsonElement, $containerNode,  function that creates a node to be appended to the $container )
    if (typeof loadContent !== 'undefined') {
        loadContent(
            'http://hyp-telecom.ml/php/get_all_sl_service_categories.php',
            'sl_service_categories', $('#sl_services_container'), load_SL_Services);
        //Adding styles
        $('head').append('<link href="../css/sl_services_list.css" rel="stylesheet">');
    }
});