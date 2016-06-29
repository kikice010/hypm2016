$(document).ready(function(){
   

	$( "#template_landmarks" ).load( "../template_landmarks.html", function() {
      $(".active:first").removeClass('active');
      $("#nav-assistence").addClass('active');
  });


  var params = (window.location.search.replace("?", "")).split("=");
  $.ajax({
    url:'http://hyp-telecom.ml/php/assistence_single.php',
    method:'GET',
    contentType: "application/json; charset=UTF-8",
    data: {'id':params[1]},
    
    success:function(data){
          console.log(data);
          if (data.hasOwnProperty('success') && data.success === 0){
                $('.page-wrap .container-msg').append(
                    $('<p>Invalid request</p>').addClass('error-msg'));
            }
            else{
              
              var assistence = $.parseJSON(data);

              fill_name_information(assistence);
              fill_description_information(assistence);
              
              
            }          
          },

    error: function(xhr, desc, err) {
        console.log(xhr);
        console.log("Details: " + desc + "\nError:" + err);
      }
    });

  $.ajax({
      url: 'http://hyp-telecom.ml/php/get_assistence_devices.php',
      type: 'post',
      data: {
      	'id':params[1]},
      success: function(data, status) {
      	 var devices = $.parseJSON(data);
      	 var size = devices.length;
      	 var insertString = "";

      	 $.each(devices, function (i, device) {
      	 	 var insertBox = '<div class="col-lg-3 device-block-outer">'
  							+ '<div class="device-image device-block"><img src="..' + device.img + '" class="device-image"></div><div class="text-center"><h4>' + device.name + '</h4></div><div class="text-center"><form action="../pages/devices.html" methode="get"><input type="hidden" name="id" value=' + device.id +' ><button class="btn btn-primary" type="submit">Details</button></form></div></div>';
      	 	 if (i == 0)  {
      	 	 	insertString+='<div class="row">';
      	 	 	insertString+=insertBox;
      	 	 }
   			 else if (i % 4 == 0 && i != 0) {
				insertString+='</div>';
				insertString+='<div class="row">';
				insertString+=insertBox;
			 } 
			 else {
			 	insertString+=insertBox;
			 }
		});

      	insertString+='</div>'; //mozda ne

      	$('#grid').html(insertString);

      },
      error: function(xhr, desc, err) {
        console.log(xhr);
        console.log("Details: " + desc + "\nError:" + err);
      }
   }); // end ajax call

 

  function fill_name_information(assistence){

    $('#breadcrumb_name').text(assistence.name);
    $('#assistence_title').text(assistence.name);

  };

  function fill_description_information(assistence){

    $('#assistence_desc').text(assistence.description);
    

  };

//   function create_sl_service_container(sl_service){

//     var sl_service_container_item = ('<div class="col-sm-6 col-md-3">'
//       +'<div class="thumbnail"><img class="sl-service-img img-responsive" src="..'+sl_service.image_path+'" alt="'+sl_service.name+'">'
//       +'<div class="sl-service-name caption"><h4>'+sl_service.name+'</h4>'
//       +'<p><a href="../pages/sl_service.html?id='+sl_service.id+'" class="btn btn-primary" role="button">See Details</a></p></div></div></div>');
//     return sl_service_container_item;

//   };

// function create_assistance_item(assistance){

//     var assitance_item = ('<a class="list-group-item" href="./assistence_single.html?id='+assistance.id+'">'+assistance.name+'</a>');
//     return assitance_item;

//   };
  



// function fill_sl_service_information(sl_services){

//   var rootSlServicesContainer = $('#slservices_tab').find('.slservices-container');
//   if (sl_services.length>0) {
//     for (var j in sl_services) {
//       rootSlServicesContainer.append(create_sl_service_container(sl_services[j]));
//     }
//   }
// };

// function fill_assistance_information(assistances){

//   var rootAssitancesContainer = $('#assistance_tab').find('.assistances-container');
//   if (assistances.length>0) {
//     for (var j in assistances) {
//       rootAssitancesContainer.append(create_assistance_item(assistances[j]));
//     }
//   }
// };




});




