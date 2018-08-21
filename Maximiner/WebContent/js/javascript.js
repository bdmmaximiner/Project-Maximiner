$(document).ready(function() {
	$('#first_name').on('keypress', onlyAlphabetsFirstName);
	$('#last_name').on('keypress', onlyAlphabetsLastName);
});

function onlyAlphabetsFirstName() {
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
function onlyAlphabetsLastName() {
	var regex = new RegExp("[a-zA-Z]+\\.?");
	var key = String.fromCharCode(!event.charCode ? event.which
			: event.charCode);
	if (!regex.test(key)) {
		$("#lastnameInvalid").text(key +" is Invalid");
		document.getElementById("firstnameInvalid").style.visibility = "visible";
		event.preventDefault();
		return false;
	}else{
		document.getElementById("firstnameInvalid").style.visibility = "hidden";
		$("#lastnameInvalid").text("");
	}
}
