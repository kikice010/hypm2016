$(document).ready(function(){
    
	getAssistence(1,1,1,1,0);

	$( "#template_landmarks" ).load( "../template_landmarks.html", function() {
  		$(".active:first").removeClass('active');
  		$("#nav-assistence").addClass('active');
	});

});

function handleAllClick(cb) {
	document.getElementById('filter-all').checked = true;
	if (document.getElementById('filter-all').checked) {
		document.getElementById('filter-services').checked = false;
		document.getElementById('filter-payment').checked = false;
		document.getElementById('filter-monitor').checked = false;
		document.getElementById('filter-smart').checked = false;
	}
}

function filterClick(cb) {
	var getService = 0;
	var getPayment = 0;
	var getMonitor = 0;
	var getSmart = 0;
	var prom = 0;

	if (document.getElementById('filter-services').checked || document.getElementById('filter-payment').checked || document.getElementById('filter-monitor').checked || document.getElementById('filter-smart').checked) {
		document.getElementById('filter-all').checked = false;
		if (document.getElementById('filter-services').checked) getService = 1;
		if (document.getElementById('filter-payment').checked) getPayment = 1;
		if (document.getElementById('filter-monitor').checked) getMonitor = 1;
		if (document.getElementById('filter-smart').checked) getSmart = 1;
		
	}
	else {
		document.getElementById('filter-all').checked = true;
		getService = 1;
		getPayment = 1;
		getMonitor = 1;
		getSmart = 1;
	}
	
  	if ($('#prom-tab').attr('class') == "active") prom = 1;
    getAssistence(getService, getPayment, getMonitor, getSmart, prom);
 
}

function handleCatClick() {
	document.getElementById('filter-all').checked = true;
	document.getElementById('filter-services').checked = false;
	document.getElementById('filter-payment').checked = false;
	document.getElementById('filter-monitor').checked = false;
	document.getElementById('filter-smart').checked = false;
	getAssistence(1,1,1,1,0);
}

function handleHighlightClick() {
	document.getElementById('filter-all').checked = true;
	document.getElementById('filter-services').checked = false;
	document.getElementById('filter-payment').checked = false;
	document.getElementById('filter-monitor').checked = false;
	document.getElementById('filter-smart').checked = false;
	getAssistence(1,1,1,1,1);
}

function getAssistence(service, payment, monitor, smart, prom) {
	$.ajax({
      url: 'http://hyp-telecom.ml/php/assistence_grid.php',
      type: 'post',
      data: {
      	'service': service,
      	'payment': payment,
      	'monitor': monitor,
      	'smart': smart,
      	'hilight' : prom
  			},
      success: function(data, status) {
      	 var devices = $.parseJSON(data);
      	 var size = devices.length;
      	 var insertString = "";

      	 $.each(devices, function (i, device) {
      	 	 var insertBox = '<div class="col-lg-3 col-lg-offset-1 device-block"><div class="text-center"><h4>' + device.name + '</h4></div><div class="text-center"><form action="../pages/assistence_single.html" methode="get"><input type="hidden" name="id" value=' + device.id +' ><button class="btn btn-primary" type="submit">Details</button></form></div></div>';
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