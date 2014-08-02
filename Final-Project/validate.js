function validate () {
    var error = "";
	var opinion = "";
    document.getElementById('lastname').style.borderRight = '';
	document.getElementById('firstname').style.borderRight = '';
	document.getElementById('occupation').style.borderRight = '';
	document.getElementById('othertext').style.borderRight = '';
	document.getElementById('opinion').style.borderRight = '';
	document.getElementById('email').style.borderRight = '';
	document.getElementById('comment').style.borderRight = '';
    
	
    //first name validation
    if(document.getElementById('firstname').value == document.getElementById('firstname').defaultValue) {
        error += "No first name!\n";
        document.getElementById('firstname').style.borderRight = '5px solid Red';
    }
	else if(/[0-9]/.test(document.getElementById('firstname').value)) {
		error += "Invalid first name!\n";
		document.getElementById('firstname').style.borderRight = '5px solid Red';
	}
   
    //last name validation
    if(document.getElementById('lastname').value == document.getElementById('lastname').defaultValue) {
        error += "No last name!\n";
        document.getElementById('lastname').style.borderRight = '5px solid Red';
    }
	else if(/[0-9]/.test(document.getElementById('lastname').value)) {
		error += "Invalid last name!\n";
		document.getElementById('lastname').style.borderRight = '5px solid Red';
	}

    //occupation validation
	var checked = 0;
	var i;
	
	for(i = 0; i < 4; i++) {
		if(document.getElementById('occ'+i).checked) {
			checked += 1;
		}
		//'other' text box is filled when checked
		if(i == 3 && document.getElementById('occ'+i).checked) {
			if(document.getElementById('othertext').value == document.getElementById('othertext').defaultValue) {
				error += "No occupation in 'Other' field!\n";
				document.getElementById('othertext').style.borderRight = '5px solid Red';
			}
		}
	}
	if(checked == 0) { 
		error += "No occupation!\n";
		document.getElementById('occupation').style.borderRight = '5px solid Red';
	}
    
    //adress code validation
    if(document.getElementById('email').value == document.getElementById('email').defaultValue) {
        error += 'No email adress!\n';
        document.getElementById('email').style.borderRight = '5px solid Red';
    }
    else if(!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById('email').value)) {
        error += "Bad email.\n \tPlease use xxx@xxx.xxx format.\n";
        document.getElementById('email').style.borderRight = '5px solid Red';
    }

    //opinion validation
    if(!document.getElementById('radio').checked && !document.getElementById('radio1').checked) {
        error += "No opinion!\n";
        document.getElementById('opinion').style.borderRight = '5px solid Red';
    }
	else if(document.getElementById('radio').checked) {opinion = "Liked the site!";}
	else if(document.getElementById('radio1').checked) {opinion = "Not to thrilled.";}
	
	//comment is there
	if(document.getElementById('comment').value == document.getElementById('comment').defaultValue) {
		error += "No comment!\n";
		document.getElementById('comment').style.borderRight = '5px solid Red';
	}
    
    if(error != "") {
        alert("Some fields need correction(s):\n" + error);
        error = "";
        return false;
    }
	
    return confirm("Please review the information before submitting:\n"
					+ "Name: " + document.getElementById('firstname').value 
					+ " " + document.getElementById('lastname').value
					+ "\nemail address: " + document.getElementById('email').value
					+ "\nOpinion: " + opinion
					+ "\nComment:\n" + document.getElementById('comment').value);
}