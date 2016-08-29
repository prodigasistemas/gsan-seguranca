$(function(){

  $(".panel-modulo").click(function(event) {
    
    var moduloId = $(this).data("modulo-id");
    var $submenu = $(".row-submenu[data-modulo-id='" + moduloId + "']");
    
    if( $submenu.is(":visible") ){
      $submenu.hide();
      $(this).next(".panel-ligacao").hide();
    }
    else{
      $(".panel-ligacao").hide();
      $(".row-submenu").hide();
      $(this).next(".panel-ligacao").show();
      $submenu.show();
    }

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