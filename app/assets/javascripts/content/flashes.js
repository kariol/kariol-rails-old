$(document).ready(function() {
  if($(".alert-info").length > 0) {
    setTimeout(function(){
      $('.alert-info').alert('close');
    }, 6000);
  };
});
