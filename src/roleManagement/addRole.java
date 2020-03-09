package roleManagement;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * Servlet implementation class addRole
 */
@WebServlet("/addRole")
public class addRole extends HttpServlet {
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String systemroleNew = request.getParameter("systemRoleNew");
		String adminManagedNew = request.getParameter("adminManagedNew");
	
	
    	Connection con = null;
		Statement stmt = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection ("jdbc:mysql://127.0.0.1:3306/role_management","root","chalizard");
			stmt = con.createStatement();
			
 stmt.executeUpdate("insert into roles(name, systemrole , adminrole) values('"+name+"','"+systemroleNew+"','"+adminManagedNew+"')")	;		

              stmt.close();
		      con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  

		
	}

	private String String(String parameter) {
		// TODO Auto-generated method stub
		return null;
	}
		



}
