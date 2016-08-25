$(function(){

  $(".panel-modulo").click(function(event) {
    
    // alert( $(this).data("modulo-id") )
    var moduloId = $(this).data("modulo-id");

    $(".row-submenu").hide();
    $(".row-submenu[data-modulo-id='" + moduloId + "']").show();

  });

  
})