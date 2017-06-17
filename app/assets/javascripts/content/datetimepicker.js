$(document).ready(function() {
  if($(".users.edit").length > 0) {
    $(function () {
      $('#user_born_at').datetimepicker({
        format: 'L',
        viewMode: 'years'
      });
    });
  };
});
