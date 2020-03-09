function validate(){
   var desc = document.getElementById("descNew").value;
	if(desc == null || desc == ""){

		document.getElementById("warningNew").innerHTML = "Description cnnot be empty";	

	}


}

function func(chk) {

	var desc = document.getElementById("descNew").value;

	

	if(desc == null || desc == ""){

		document.getElementById("warningNew").innerHTML = "Description cannot be empty";	

	}	



	if(chk.checked){

    	  document.getElementById("newMsgNew").style.visibility = "visible";



    }else{

  	  document.getElementById("newMsgNew").style.visibility = "hidden";



    }

}

function savedata()
{

$.ajax({

		url : 'http://localhost:8080/demo8/addRole',
		
		data : {
			name: $('#descNew').val(),
			systemRoleNew:document.getElementById("systemRoleNew").checked,
			adminManagedNew: document.getElementById("adminManagedNew").checked
		},
		
		success: function()
		{			
			$( "#roles" ).load( "http://localhost:8080/demo8/table.jsp" );

		}
		
	});


}