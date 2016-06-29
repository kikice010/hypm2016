$(document).ready(function(){

  //landmarks page acrtive elments change
      $("#template_landmarks").on('click','#nav-who-we-are',function(){

        $(".active:first").removeClass('active');
        $("#nav-who-we-are").addClass("active");

        //setting session for who-we-are-tab
        localStorage.setItem("tab",'w');

      });

      $("#template_landmarks").on('click','#nav-group',function(){

        $(".active:first").removeClass('active');
        $("#nav-group").addClass("active");

        //setting session for nav-group-tab
        localStorage.setItem("tab",'g');

      });
      
      $("#template_landmarks").on('click','#nav-contact',function(){

        $(".active:first").removeClass('active');
        $("#nav-contact").addClass("active");

        //setting session for nav-contact-tab
        localStorage.setItem("tab",'c');

      });


});