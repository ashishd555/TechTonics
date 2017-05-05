<%@page import="com.test.Classes.DBConnection"%>
<%@page import="com.test.Classes.TechTalkEvent"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.io.PrintWriter"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tech Events</title>
<meta name="description"
	content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="./css/animate.min.css" />
<link rel="stylesheet" href="./css/ionicons.min.css" />
<link rel="stylesheet" href="./css/styles.css" />
<script type="text/javascript">
	window.history.forward();
</script>
</head>
<body>
<% 
	DBConnection con=new DBConnection();
	
	ArrayList<TechTalkEvent> listOfEvents=con.getTechTalkEvent(con.getConnetion()); 
%>
	<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#first"><i
					class="ion-ios-analytics-outline"></i> Login</a>
			</div>

		</div>
	</nav>
	<header id="first">
		<div class="header-content">
			<div class="inner">
				<h1 class="cursive">Latest Tech Talks Events</h1>

				<hr>
				<table align="center" cellpadding="5" cellspacing="5" border="1">
		<tr>

		</tr>
		<tr bgcolor="#A52A2A">
			<td><b>Title</b></td>
			<td><b>Date</b></td>
			<td><b>Description</b></td>
			<td><b>Name of Trainer</b></td>
		</tr>

		<%for(TechTalkEvent obj:listOfEvents){%>
			<tr>
                    <td><%=obj.title %></td>
                    <td><%=obj.date %></td>
                    <td><%=obj.description %></td>
                    <td><%=obj.trainer %></td>
                   
                    <td>
                    
                     
                       <form action="LoginController" method="get">
					
				<input type="hidden" value="<%=obj.title %>" name="id">
				<input type="submit" class="form-control" value="Register">
					</form>
                    	
                    </td>
                </tr>
		<%} %>
		

	</table>

				<hr>

			</div>
				<form action="LogoutController">
	<input type="submit" name="logout" value="logout" class="btn btn-primary btn-xl">
</form>
		</div>
		
	</header>
</body>
</html>
