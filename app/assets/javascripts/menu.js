$(function(){

  $(".panel-modulo").click(function(event) {
    
    var moduloId = $(this).data("modulo-id");

    $(".row-submenu").hide();
    $(".row-submenu[data-modulo-id='" + moduloId + "']").show();
    $(".panel-ligacao").hide();
    $(this).next(".panel-ligacao").show();

  });

  $(".funcionalidade-pai").click(function(event) {
    
    event.preventDefault();
    var $submenu = $(this).next(".submenu");

    if( $submenu.is(":visible") ){
      $submenu.hide();
      $(this).find("i").removeClass('fa-caret-down').addClass('fa-caret-right');
    }
    else{
      $submenu.show();
      $(this).find("i").removeClass('fa-caret-right').addClass('fa-caret-down');
    }

  });

  
})