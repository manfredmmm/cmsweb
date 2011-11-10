//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .


$(document).ready(function() {
  $('textarea.editor').each(function() {
      CKEDITOR.replace($(this).attr('id'),
        {
          enterMode: 1, //En apretar ENTER fa un p
          shiftEnterMode: 2, //En apretar shift+ENTER fa un br
        });
  });
});

