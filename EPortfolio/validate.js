function validate () {
	var error = "";
	document.myform.phone.style.background = '';
	document.myform.email.style.background = '';
	document.myform.firstname.style.background = '';
	document.myform.lastname.style.background = '';
	document.myform.comment.style.color = 'white';
	
	//first name validation
	if(document.myform.firstname.value == document.myform.firstname.defaultValue) {
		error += "No first name!\n";
		document.myform.firstname.style.background = 'Red';
	}
	
	//last name validation
	if(document.myform.lastname.value == document.myform.lastname.defaultValue) {
		error += "No last name!\n";
		document.myform.lastname.style.background = 'Red';
	}	
	
	//phone number validation
	if(document.myform.phone.value == document.myform.phone.defaultValue) {
		error += "No phone number!\n";
		document.myform.phone.style.background = 'Red';
	}
	else if(!/^\d{3}-\d{3}-\d{4}$/.test(document.myform.phone.value)) {
		error += "Bad phone number.\n \tPlease use ###-###-#### format.\n";
		document.myform.phone.style.background = 'Red';
	}
	
	//adress code validation
	if(document.myform.email.value == document.myform.email.defaultValue) {
		error += 'No email adress!\n';
		document.myform.email.style.background = 'Red';
	}
	else if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.myform.email.value)) {
		error += "Bad email.\n \tPlease use xxx@xxx.xxx format.\n";
		document.myform.email.style.background = 'Red';
	}

	//comment validation
	if(document.myform.comment.value == document.myform.comment.defaultValue) {
		error += "No comment!\n";
		document.myform.comment.style.color = 'Red';
	}
	
	if(error != "") {
		alert("Some fields need correction(s):\n" + error);
		error = "";
		return false;
	}
	
	return true;
}