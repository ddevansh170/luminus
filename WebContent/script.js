/**
 * 
 */
function validate(){
	var desc = document.getElementById("desc").value;
	//var systemRole = document.getElementById("systemRole").checked;
	
	if(desc == null || desc == ""){
		document.getElementById("warning").innerHTML = "Description cannot be empty";	
	}	
}

function func(chk) {

    if(chk.checked){
        	var x = document.getElementById("newMsg");
    	    x.style.visibility = 'visibile';
    }else{
    	var x = document.getElementById("newMsg");
	    x.style.visibility = 'hidden';
    }
   // dvPassport.style.display = chkPassport.checked ? "block" : "none";
}