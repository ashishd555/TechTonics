<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.PrintWriter"%>
<%@ page import="com.test.techtalks.Event"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	window.history.forward();
</script>
</head>
<body>
	<h1>Welcome Ashish...</h1>
	<table align="center" cellpadding="5" cellspacing="5" border="1">

		<tr bgcolor="#A52A2A">
			<td><b>Title</b></td>
			<td><b>Date</b></td>
			<td><b>Description</b></td>
			<td><b>Name of Trainer</b></td>
			<td><b>Edit</b></td>
			<td><b>Delete</b></td>
		</tr>


		<%
			Event e = new Event();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/techtalk", "root", "root");
			Statement st = con.createStatement();

			ResultSet resultSet = st.executeQuery("select * from events");
			PrintWriter out1 = response.getWriter();

			while (resultSet.next()) {
		%>

		<tr bgcolor="#DEB887"">
			<td><b> <%
 	out.println(resultSet.getString(1));
 %>
			</b></td>
			<td><b> <%
 	out.println(resultSet.getString(2));
 %>
			</b></td>
			<td><b> <%
 	out.println(resultSet.getString(3));
 %>
			</b></td>
			<td><b> <%
 	out.println(resultSet.getString(4));
 %>
			</b></td>
			<td><b>
					<form action="UpdateEvent.jsp">
						<input type="hidden" value="<%=resultSet.getString(1)%>" name="id">
						<input type="submit" class="form-control" value="Edit">
					</form>
			</b></td>

			<td><b>
					<form action="DeleteController" method="post">
						<input type="hidden" value="<%=resultSet.getString(1)%>" name="id">
						<input type="submit" class="form-control" value="Delele">
					</form>
			</b></td>

			<%
				}
			%>
		
	</table>
	<form action="AddEvent.jsp">

		<input type="submit" value="Add Events" />
	</form>

	<form action="LogoutController">
		<input type="submit" name="logout" value="logout">
	</form>
</body>
</html>