<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Role Managament</title>
<link rel="stylesheet" href="style.css"/>
<script src="script.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script>

</script>


<style>

.heading{
position:absolute;
top:200px;
left:150px;
font-size:30px;
}

.link{
position:absolute;
top:290px;
left:150px;
font-size:15px		
}

a { 
    color: blue;
}

.heading2{
position:absolute;
top:100px;
left:100px;
font-size:25px;
}
.return{	
position:absolute;
top:115px;
left:820px;
font-size:13px;		
}


.roles{
position:absolute;
top: 150px;
left: 100px;
width: 260px;
height: 300px;
border: 1px solid black;
}
.info{
position: relative;
top: 145px;
left: 370px;
width: 550px;
height: 300px;
border: 1px solid black;
padding-left: 15px;
}

.newUser{

position: relative;
top: 150px;
left: 860px;
width: 40px;
height: 20px;
padding: 5px;
}
.newMsg{
 visibility: hidden;
color:red;
}


</style>
<script>
function systemRole(checkbox){
	//var systemRole = document.getElementById("systemRole");
	if(checkbox.checked){
		alert("yes");
	}else{
		alert("no");
	}
	
}

</script>

</head>
<body>
<div id="heading" class="heading2">Luminis Role Management</div>


<div id="roles" class="roles" style="overflow-y:auto;">Roles <br>
<table width=100% class="table table-hover table-striped table-bordered table-condensed">
<thead>
	<tr>
		<th width=80%><br></th>
		<th width=10%></th>
		<th width=10%></th>
	</tr>
</thead>
<tbody>
	<tr >
		<td>ADMIN</td>
		<td><a href="#ex2" rel="modal:open"><img src="pencil.jpg" height="15" width="15"></a></td>
		<td><a href="#" rel="cancel:open"><img src="cancel.jpg" height="15" width="15"></a></td>
	</tr>
	<tr >
		<td>student</td>
		<td><a href="#ex2" rel="modal:open"><img src="pencil.jpg" height="15" width="15"></a></td>
		<td><a href="#" rel="cancel:open"><img src="cancel.jpg" height="15" width="15"></a></td>
	</tr>
	<tr >
		<td>ALUMINI</td>
		<td><a href="#ex2" rel="modal:open"><img src="pencil.jpg" height="15" width="15"></a></td>
		<td><a href="#" rel="cancel:open"><img src="cancel.jpg" height="15" width="15"></a></td>
	</tr>
	<tr >
		<td>creator</td>
		<td><a href="#ex2" rel="modal:open"><img src="pencil.jpg" height="15" width="15"></a></td>
		<td><a href="#" rel="cancel:open"><img src="cancel.jpg" height="15" width="15"></a></td>
	</tr>
</tbody>	
</table>
</div>


<div id="info" class="info">Properties<hr> <p></p>
	Id: <div id="id" class="id"></div>
	Description: <div id="description" class="description"></div>
	System Role: <div id="systemRole" class="systemRole"></div>
	Admin.Managed: <div id="adminManaged" class="adminManaged"></div><br><br>
	<div id="propMsg" class="propMsg" style="color:red;"> This is a system Role.</div>
	

</div>



<div id="return" class="return"><a href="home.jsp">Return To Full Page</a></div>

<div id="ex2" class="modal">
Edit Role Properties<hr><p></p>
<form>
Description <span style="color:red;">*</span> <input type="text" id="desc" class="desc">
<br><br>
<label for="systemRole">System Role </label>
<input type="checkbox" id="systemRole" class="systemRole" value="systemRole">
 <br><br>
 <label for="systemRole">Admin.Managed </label>
<input type="checkbox" id="systemRole" class="systemRole" value="systemRole">
<p></p>
<div id="newMs" class="newMs" style="color:red;">This is a system Role- Only the Admin.Managed setting can be changed.</div>
<p></p>
<a href="#" rel="modal:close"><input type="button" id="cancel" class="cancel" value="cancel"></a>
<input type="button" id="save" class="save" value="save">
</form>
	


</div>




<div id="ex1" class="modal">
Create New Role<hr><p></p><br><br>
<form>
Description <span style="color:red;">*</span> <input type="text" id="desc" class="desc"
				  onfocusout="validate()"><br>
<span id="warning" class="warning" style="color:red;font-size:11px;"></span>
				  
<br><br>
<label for="systemRole">System Role </label>
<input type="checkbox" id="systemRole" class="systemRole" value="systemRole" onclick="func(this)"/>
 <br><br>
 <label for="adminManaged">Admin.Managed </label>
<input type="checkbox" id="adminManaged" class="systemRole" value="">
<p></p>
<div id="newMsg" class="newMsg" >This is a system Role- Only the Admin.Managed setting can be changed.</div>
<p></p>
<a href="#" rel="modal:close"><input type="button" id="cancel" class="cancel" value="cancel"></a>
<input type="button" id="save" class="save" value="save">
</form>
</div>


<div id="successMessage" class="modal">
Operation Succesful<hr><p></p>
Operation Succesful.<p></p>
<input type="button" id="ok" class="ok" value="OK">
</div>


<div id="systemDelete" class="modal">
<hr><p></p>
This is a system Role.<p></p>
<input type="button" id="ok" class="ok" value="OK">
</div>


<div id="nonSystemDelete" class="modal">
<hr><p></p>
Are you sure you want to delete the '<div id="" class=""></div>' role?<p></p>
<input type="button" id="yes" class="yes" value="Yes">
<input type="button" id="no" class="no" value="No">
</div>



<!-- Link to open the modal -->
<a href="#ex1" rel="modal:open"><button class="newUser">new</button></a>

</body>
</html>