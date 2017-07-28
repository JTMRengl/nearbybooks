
;(function ( $, window, document, undefined ) {

$.fn.config = function (parameters) {
  var 
    $allModules    = $(this),
    $window        = $(window),
    $document      = $(document),
    $body          = $('body'),
    
    moduleSelector = $allModules.selector || ''
  ;
  
  $allModules.each(function() {
    var
      settings    = ( $.isPlainObject(parameters) )
      ? $.extend(true, {}, $.fn.config.settings, parameters)
      : $.extend({}, $.fn.config.settings),
      
      selector        = settings.selector,
      
      $module         = $(this),
      
      element         = this,
      
      module
    ;
      
    module = {
      
      initialize : function () {
        module.bind.events();
        $module.modal('show');
      },
      bind : {
        events : function () {
          $module
            .on('click', selector.yes, module.event.yes)
            .on('click', selector.no, module.event.no)
        }
      },
      event : {
        yes : function () {
          if(settings.yes.call(element, $(this)) === true) {
            $module.modal('hide');
            return;
          }
        },
        no : function () {
          if(settings.no.call(element, $(this)) === true) {
            $module.modal('hide');
            return;
          }
        }
      }
    }
    module.initialize();
  });
  
}

$.fn.config.settings = {
  yes : function () {},
  no : function () {},
  selector    : {
    yes : '.yes',
    no : '.no'
  }
}

})( jQuery, window, document );