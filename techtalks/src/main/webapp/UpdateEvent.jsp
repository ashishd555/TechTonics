<%@page import="java.awt.JobAttributes"%>
<%@page import="com.mysql.jdbc.util.ResultSetUtil"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*,java.io.PrintWriter"%>
<%@ page import="com.test.techtalks.Event"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//String id=(String)session.getAttribute("id");
		//PrintWriter p=response.getWriter();p.write(id);
		String id=request.getParameter("id");
		session.setAttribute("j", id);
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
			"jdbc:MySql://localhost:3306/techtalk", "root", "root");
	Statement st = con.createStatement();
	ResultSet rs= st
			.executeQuery("select * from events where title='"+id+"'");
		
		while(rs.next())
		{ %>
			<form action="UpdateController" method="post" >
		    
		    <div class="form-group">
		      <label for="emailid">Title:</label>
		      <input type="text" class="form-control"  id="title" placeholder="Enter title" name="title" value="<%=rs.getString("title") %>" >
		    </div>
		    
		    <div class="form-group">
		      <label for="password">Date:</label>
		      <input type="text" class="form-control" id="date" placeholder="Enter date"  name="date" value="<%=rs.getString("date") %>" >
		    </div>
		    
		    <div class="form-group">
		      <label for="password">Description:</label>
		      <input type="text" class="form-control" id="description" placeholder="Enter description"  name="description" value="<%=rs.getString("description") %>" >
		    </div>
		    
		    <div class="form-group">
		      <label for="password">Name of Trainer:</label>
		      <input type="text" class="form-control" id="trainer" placeholder="Enter trainer"  name="trainer" value="<%=rs.getString("trainer") %>" >
		    </div>
		    
		   
		    <button type="submit" class="btn btn-default">Submit</button>
		  </form>
		

		<%}
		
	%>

</body>
</html>