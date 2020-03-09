<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Role Managament</title>
<link rel="stylesheet" href="style.css">
<script src="script.js"></script>
<!-- table layout -->
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- modal pop up -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
 -->
<script>
$(document).ready(function()	{		
	$( "#roles" ).load( "http://localhost:8080/demo8/table.jsp" );
});
</script>


<style>
a { 
    color: blue;
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
.gray{


}
.info{
position: relative;
top: 150px;
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
.desc{
position: relative;
left: 50px;
}
.systemRole{
position: relative;
left: 45px;
}
.adminManaged{
position: relative;
left: 21px;
}
.save{
position: absolute;
right: 30px;
bottom:30px;
color: black;
width: 60px;
padding: 1px;
border-radius: 5px;
}
.cancel{
position: absolute;
right: 120px;
bottom:30px;
color: black;
width: 60px;
padding: 1px;
border-radius: 5px;
}
.save:hover {
  background-color: #A9A9A9;
}
.cancel:hover {
  /* Green */
  background-color: #A9A9A9;
}
.roles {
    @include ''
}
</style>


</head>
<body>
<div id="heading" class="heading2">Luminis Role Management</div>

<!-- Roles Table -->

<div id="roles" class="roles" style="overflow-y:auto;"><div class = "gray">Roles</div> <br>

</div>

<!--  Properties  -->

<div id="info" class="info">Properties<hr> <p></p>
	Id: <div id="id" class="id"></div>
	Description: <div id="description" class="description"></div>
	System Role: <div id="systemRole" class="systemRole"></div>
	Admin.Managed: <div id="adminManaged" class="adminManaged"></div><br><br>
	<div id="propMsg" class="propMsg" style="color:red;"> This is a system Role.</div>
	

</div>


<!-- Return To Full Page -->

<div id="return" class="return"><a href="home.jsp">Return To Full Page</a></div>


<!-- Create New Role  -->

<div id="ex1" class="modal">
Create New Role<hr><p></p><br><br>
<form>
Description <span style="color:red;">*</span> <input type="text" id="descNew" class="desc"
				  onfocusout="validate()"><br>
<span id="warningNew" class="warning" style="color:red;font-size:11px;"></span>
				  
<br><br>
<label for="systemRoleNew">System Role </label>
<input type="checkbox" id="systemRoleNew" class="systemRole" value="systemRole" onclick="func(this)"/>
 <br><br>
 <label for="adminManagedNew">Admin.Managed </label>
<input type="checkbox" id="adminManagedNew" class="adminManaged" value="adminManaged">
<p></p>
<div id="newMsgNew" class="newMsg" >This is a system Role- Only the Admin.Managed setting can be changed.</div>
<p></p>
<a href="#" rel="modal:close"><input type="button" id="cancelNew" class="cancel" value="cancel"></a>
<input type="button" id="saveNew" class="save" value="save" onclick = "savedata()">
</form>
</div>



<!-- Edit Role Properties  -->

<div id="ex2" class="modal">
Edit Role Properties<hr><p></p>
<form>
Description <span style="color:red;">*</span> <input type="text" id="descEdit" class="desc">
<br><br>
<label for="systemRoleEdit">System Role </label>
<input type="checkbox" id="systemRoleEdit" class="systemRole" value="systemRole">
 <br><br>
 <label for="adminManagedEdit">Admin.Managed </label>
<input type="checkbox" id="adminManagedEdit" class="systemRole" value="systemRole">
<p></p>
<div id="newMsgEdit" class="newMs" style="color:red;">This is a system Role- Only the Admin.Managed setting can be changed.</div>
<p></p>
<a href="#" rel="modal:close"><input type="button" id="cancelEdit" class="cancel" value="cancel"></a>
<input type="button" id="saveEdit" class="save" value="save" >
</form>

</div>


<!-- Operation Succesful  -->

<div id="successMessage" class="modal">
Operation Succesful<hr><p></p>
Operation Succesful.<p></p>
<input type="button" id="ok" class="ok" value="OK">
</div>


<!-- System Delete Box -->

<div id="systemDelete" class="modal">
<hr><p></p>
This is a system Role.<p></p>
<input type="button" id="ok" class="ok" value="OK">
</div>


<!-- Non System Delete Box  -->

<div id="nonSystemDelete" class="modal">
<hr><p></p>
Are you sure you want to delete the '<div id="" class=""></div>' role?<p></p>
<input type="button" id="yes" class="yes" value="Yes">
<input type="button" id="no" class="no" value="No">
</div>



<!-- New Button -->
<a href="#ex1" rel="modal:open"><button class="newUser">new</button></a>

</body>
</html>