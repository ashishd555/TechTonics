<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div class="container">
  <h2>Add Event Details</h2>
  <form action="AddEventController" method="post">
    
    <div class="form-group">
      <label for="emailid">Title:</label>
      <input type="text" class="form-control"  id="title" placeholder="Enter title" name="title" >
    </div>
    
    <div class="form-group">
      <label for="password">Date:</label>
      <input type="text" class="form-control" id="date" placeholder="Enter date"  name="date">
    </div>
    
    <div class="form-group">
      <label for="password">Description:</label>
      <input type="text" class="form-control" id="description" placeholder="Enter description"  name="description">
    </div>
    
    <div class="form-group">
      <label for="password">Name of Trainer:</label>
      <input type="text" class="form-control" id="trainer" placeholder="Enter trainer"  name="trainer">
    </div>
    
   
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>