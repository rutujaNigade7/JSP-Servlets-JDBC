<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student Form</title>

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
	<h2>Add Student </h2>
	
	<form action="StudentControllerServlet" method="POST"> 
		
		<input type="hidden" name="command" value="ADD" />
		
			<table>
				<tbody>
				
					<tr>
						<td><lable>First name</lable></td>
						<td><input type="text" name="first-name-text" /></td>
					</tr>
										<tr>
						<td><lable>last name</lable></td>
						<td><input type="text" name="last-name-text" /></td>
					</tr>
										<tr>
						<td><lable>Email</lable></td>
						<td><input type="text" name="email-text" /></td>
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
