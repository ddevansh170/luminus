<%@page import="java.io.*,java.util.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Table Roles</title>
</head>
<body>

Roles
<table width=100% class="table table-hover table-striped table-bordered table-condensed">
<thead>
	<tr>
		<th width=80%><br></th>
		<th width=10%></th>
		<th width=10%></th>
	</tr>
</thead>

<tbody>



<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "role_management";
String userId = "root";
String password = "chalizard";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
try {
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT * FROM roles";
resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>

  
<tr >

<td><%=resultSet.getString("name")%></td>
<td><a href="#ex2" rel="modal:open"><img src="pencil.jpg" height="15" width="15" id = <%=resultSet.getString("id")%>></a></td>
<td><a href="#" rel="cancel:open"><img src="cancel.jpg" height="15" width="15"></a></td>
</tr>

<%
}
} catch (Exception e) {
e.printStackTrace();
}
%>


</tbody>	
</table>


</body>
</html>