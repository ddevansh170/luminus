/**
 * 
 */
function validate(){
	var desc = document.getElementById("desc").value;
	
	if(desc == null || desc == ""){
		document.getElementById("warningNew").innerHTML = "Description cannot be empty";
	
	}
	
}


function func(chk) {
	var desc = document.getElementById("desc").value;
	
	if(desc == null || desc == ""){
		document.getElementById("warningNew").innerHTML = "Description cannot be empty";	
	}	

	if(chk.checked){
    	  document.getElementById("newMsgNew").style.visibility = "visible";

    }else{
  	  document.getElementById("newMsgNew").style.visibility = "hidden";

    }
}