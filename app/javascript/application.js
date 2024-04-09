import $ from 'jquery';
import "jquery-ujs";
import "@hotwired/turbo-rails";
import "controllers";

$(function() {
  $('.flash-message').fadeOut(4000);
  console.log($('.flash-message'));
});