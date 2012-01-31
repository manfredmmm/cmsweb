//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require rails.validations
//= require_self
//= require_directory .

$(function() {
  setTimeout(function(){ $('.flash').hide("slow"); }, 2000);
  setTimeout(function(){ $('.notice').hide("slow"); }, 2000);
  setTimeout(function(){ $('.error').hide("slow"); }, 2000);
});
