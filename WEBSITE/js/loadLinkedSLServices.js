$(document).ready(function(){

		function loadServicesOfCategory(sl_service){

		//Adding Jumbotron for each SL Service
			var sl_service=$.parseJSON(sl_service);
			
			$(".linked_sl_services")
				.append(
				     '<div class=" col-sm-6 col-md-4">'
		            +    '<div class="picture">'
		            +      '<img class="center-block device-img img-responsive" src="..'+sl_service.image_path+'"/>'
		            +       '<div class="sl-service-name caption"><h4>'+sl_service.name+'</h4>'
		            +            '<p><a href="./sl_service.html?id='+sl_service.id+'" class="btn btn-primary" role="button">See Details</a></p>'
		            +        '</div>'
		            +    '</div>'
		            +'</div>'
			    );

		return null;
	}


	var url_params = (window.location.search.replace("?", "")).split("=");

    if (typeof loadContent !== 'undefined' && url_params.length === 2) {
        //Loading all SL Services of the Category
		loadContent(
            'http://hyp-telecom.ml/php/get_sl_services_by_category.php',
            'sl_services_cat', $('.linked_sl_services'), loadServicesOfCategory, 
            {'name' : url_params[1].replace(/%20/g, ' ') });
    }
    //Adding styles
       $('head').append('<link href="../css/sl_services_by_category.css" rel="stylesheet">');

});