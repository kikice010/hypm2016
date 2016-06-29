$(document).ready(function(){

function fillMapContainer(location) { 
        var rootElement = $('#map_contact_container');

        mapOptions = {
            zoom: 13,
            center: {
                lat: parseFloat(45.4811172),
                lng: parseFloat(9.2219553),
            }
        };

        // locations=location.locations;
        locations=location.locations[0];
        loadGoogleMapsScript(location.APIkey); //Important!



        return rootElement.fadeIn();
    }

    // load content from the server
    // loadContent( url,  rootJsonElement, $containerNode,  function that creates a node to be appended to the $container )
    if (typeof loadContent !== 'undefined') {
        console.log("loadContent defined");
        loadContent(
            'http://hyp-telecom.ml/php/get_telecom_locations.php',
            'location', $('#map_contact_container'), fillMapContainer);
    }


});

//global variables
var mapOptions={};
var locations={};


function initializeGoogleMap(){

    var map = new google.maps.Map(document.getElementById("map_canvas"),mapOptions);
    $("#map_canvas").css("height","300px");

    addLocationsOnMap(map);
}

function addLocationsOnMap(map){

    var marker={};
    var latLng={};
    
    // $.each(locations,function(index,data){
    //     latLng= new google.maps.LatLng(data["lat"], data["lon"]);
    //     marker = new google.maps.Marker({
    //         position: latLng,
    //         map: map
    //     });
    // });
    for( i = 0; i < locations.length; i++) {
        console.log(locations[i]);
            latLng = new google.maps.LatLng({lat: parseFloat(locations[i].lat), lng: parseFloat(locations[i].lon)});
            marker = new google.maps.Marker({
                position: latLng,
                map: map
            });
    }


}

function loadGoogleMapsScript(APIkey){
    var script = document.createElement('script');
    script.type="text/javascript";
    script.src="https://maps.googleapis.com/maps/api/js?key="+APIkey+"&callback=initializeGoogleMap";
    document.body.appendChild(script);
}