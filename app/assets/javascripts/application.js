//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_self
//= require_directory .

$(function() {
  // Hide flash messages
  setTimeout(function(){ $('.flash').hide("slow"); }, 2000);

  // Add class selected for list menu
  $('#menu li').click(function() {
    $(this).siblings('li').removeClass('selected');
    $(this).addClass('selected');
  });
});
