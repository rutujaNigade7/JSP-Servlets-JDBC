<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*,
    	com.jdbc.web.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student Form</title>

<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/add-student-style.css" />
</head>

<body>


<div id="wrapper">
	<div id="header">
		<h2>FooBar University</h2>
	</div>
</div>

<div id="container">
	<h2>Update Student</h2>
	
	<form action="StudentControllerServlet" method="GET"> 
		
		<input type="hidden" name="command" value="UPDATE" />
		<input type="hidden" name="studentId" value="${SELECTED_STUD.id}" />
		
			<table>
				<tbody>
				
					<tr>
						<td><lable>First name</lable></td>
						<td><input type="text" name="first-name-text" value="${SELECTED_STUD.firstName}" /></td>
					</tr>
										<tr>
						<td><lable>last name</lable></td>
						<td><input type="text" name="last-name-text" value="${SELECTED_STUD.lastName}" /></td>
					</tr>
										<tr>
						<td><lable>Email</lable></td>
						<td><input type="text" name="email-text" value="${SELECTED_STUD.email}" /></td>
					</tr>
										<tr>
						<td><lable></lable></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
					
				</tbody>
			
			</table>
		</form>
		<p>
			<a href="StudentControllerServlet">Back to list</a> 
		</p>
	
	</div>
</body>
</html>