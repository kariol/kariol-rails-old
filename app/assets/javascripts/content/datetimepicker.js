$(document).ready(function() {
  if($(".user.edit").length > 0) {
    $(function () {
      $('#user_born_at').datetimepicker({
        format: 'L LT',
        sideBySide: true
      });
    });
  };
});
