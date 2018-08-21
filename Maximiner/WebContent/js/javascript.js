$(document).ready(function() {
	$('#first_name').on('keypress', onlyAlphabets);
	$('#last_name').on('keypress', onlyAlphabets);
});

function onlyAlphabets() {
	var regex = new RegExp("[a-zA-Z]+\\.?");
	var key = String.fromCharCode(!event.charCode ? event.which
			: event.charCode);
	if (!regex.test(key)) {
		$("#firstnameInvalid").text(key +" is Invalid");
		document.getElementById("firstnameInvalid").style.visibility = "visible";
		event.preventDefault();
		return false;
	}else{
		document.getElementById("firstnameInvalid").style.visibility = "hidden";
		$("#firstnameInvalid").text("");
	}
}
