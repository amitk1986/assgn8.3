<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="left" border="1">
		<tr>
			<th>Employee ID</th>
			<th>Employee First Name</th>
			<th>Employee Last Name</th>
			<th>Employee Age</th>
			
		</tr>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/springjdbc";
	String usr = "root";
	String pwd = "root";
	Connection con = DriverManager.getConnection(url, usr, pwd);
	System.out.println("Connection established..");
	Statement stm = con.createStatement();
	/* select statement*/
	ResultSet rs = stm.executeQuery("select * from Employees");
	while (rs.next())
	{
%>
<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				
</tr>
<% 
	}
%>	
</table>
<%
} catch (ClassNotFoundException | SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</body>
</html>