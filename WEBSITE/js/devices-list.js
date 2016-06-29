$(document).ready(function(){
    
	getDevices(1,1,1,1);
	

	// $("#template_landmarks").load("../template_landmarks.html");


	$( "#template_landmarks" ).load( "../template_landmarks.html", function() {
  		$(".active:first").removeClass('active');
  		$("#nav-devices").addClass('active');
	});

	// $(".active:first").removeClass('active');
 //  $("#nav-devices").addClass('active');
 	
	// $("#nav-devices").attr('class', 'active');
	// $("#nav-home").removeClass('active');

});

function handleAllClick(cb) {
	if (document.getElementById('filter-all').checked) {
		document.getElementById('filter-phone').checked = false;
		document.getElementById('filter-tablet').checked = false;
		document.getElementById('filter-smart').checked = false;
	}
}

function filterClick(cb) {
	var getPhone = 0;
	var getTablet = 0;
	var getSmart = 0;
	var prom = 0;

	if (document.getElementById('filter-phone').checked || document.getElementById('filter-tablet').checked || document.getElementById('filter-smart').checked) {
		document.getElementById('filter-all').checked = false;
		if (document.getElementById('filter-phone').checked) getPhone = 1;
		if (document.getElementById('filter-tablet').checked) getTablet = 1;
		if (document.getElementById('filter-smart').checked) getSmart = 1;
		
	}
	else {
		getPhone = 1;
		getTablet = 1;
		getSmart = 1;
	}
	
  	if ($('#prom-tab').attr('class') == "active") prom = 1;
    getDevices(getPhone, getTablet, getSmart, prom);
 
}

function handleCatClick() {
	document.getElementById('filter-all').checked = true;
	document.getElementById('filter-phone').checked = false;
	document.getElementById('filter-tablet').checked = false;
	document.getElementById('filter-smart').checked = false;
	getDevices(1,1,1,0);
}

function handlePromClick() {
	document.getElementById('filter-all').checked = true;
	document.getElementById('filter-phone').checked = false;
	document.getElementById('filter-tablet').checked = false;
	document.getElementById('filter-smart').checked = false;
	getDevices(1,1,1,1);
}

function getDevices(phone, tablet, smart, prom) {
	$.ajax({
      url: 'http://hyp-telecom.ml/php/device_grid.php',
      type: 'post',
      data: {
      	'phone': phone,
      	'tablet': tablet,
      	'smart': smart,
      	'prom' : prom
  			},
      success: function(data, status) {
      	 var devices = $.parseJSON(data);
      	 var size = devices.length;
      	 var insertString = "";

      	 $.each(devices, function (i, device) {
      	 	 var insertBox = '<div class="col-lg-3 col-lg-offset-1 device-block">'
  							+ '<div class="device-image"><img src="..' + device.img + '" class="device-image"></div><div class="text-center"><h4>' + device.name + '</h4></div><div class="text-center"><h4>'+device.price + '</h4></div><div class="text-center"><form action="../pages/devices.html" methode="get"><input type="hidden" name="id" value=' + device.id +' ><button class="btn btn-primary" type="submit">Details</button></form></div></div>';
      	 	 if (i == 0)  {
      	 	 	insertString+='<div class="row">';
      	 	 	insertString+=insertBox;
      	 	 }
   			 else if (i % 3 == 0 && i != 0) {
				insertString+='</div>';
				insertString+='<div class="row">';
				insertString+=insertBox;
			 } 
			 else {
			 	insertString+=insertBox;
			 }
		});

      	insertString+='</div>';

      	$('#grid').html(insertString);

      },
      error: function(xhr, desc, err) {
        console.log(xhr);
        console.log("Details: " + desc + "\nError:" + err);
      }
   }); // end ajax call
}