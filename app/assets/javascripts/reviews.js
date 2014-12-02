$(document).ready(function() {
	$(".new-review-panel").hide();
	$("a.btn.btn-primary.new-review-toggle").click(function() {
		$(".new-review-panel").fadeToggle();
	});
});