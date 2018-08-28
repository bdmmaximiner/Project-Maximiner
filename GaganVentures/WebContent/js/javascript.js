$(document).ready(function() {

	$('#cp').html(1230)
	$('#cl').html(12309)
	$('#cup').html(12530)
	$('#sl').html(21230)
});

$(function() {
	count = 0;
	wordsArray = [ "TRACK YOUR SUCCESS HOME....", "YOUR DREAM OUR GOAL",
			"FANTASTIC INTERIORS", "GET READY TO BE A PART WITH US!!!" ];
	setInterval(function() {
		count++;
		$("#text").fadeOut(400, function() {
			$(this).text(wordsArray[count % wordsArray.length]).fadeIn(400);
		});
	}, 2000);
});
