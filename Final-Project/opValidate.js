function opValidate() {
    var error = "";
	document.getElementById('opinion').style.borderRight = '';

    //opinion validation
    if(document.getElementById('opinion').value == document.getElementById('opinion').defaultValue) {
		error += "No opinion!\n";
		document.getElementById('opinion').style.borderRight = '5px solid Red';
    }
	
	if(document.getElementById('name').value==document.getElementById('name').defaultValue) { 
		document.getElementById('name').value = 'Anonymous'; 
	}
    
    if(error != "") {
        alert("A field needs correction:\n" + error);
        error = "";
        return false;
    }
	
    return confirm("Please review the information before submitting:\n"
					+ "Name that will display: " + document.getElementById('name').value
					+ "\nOpinion: " + document.getElementById('opinion').value);
}