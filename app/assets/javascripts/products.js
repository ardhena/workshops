// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
	$(".new-product-panel").hide();
	$("a.btn.btn-primary.new-product-toggle").click(function() {
		$(".new-product-panel").fadeToggle();
	});
});