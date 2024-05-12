<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Tracker Application</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<body>

<div id="wrapper">
	<div id="header">
		<h2>FooBar University</h2>
	</div>
</div>

<h1>Young Generation of University</h1>

<input type="button" value="Add Student"
	onclick="window.location.href='add-student-form.jsp'; return false;"
			class="add-student-button" />

<br/>
<br/>

<div id="container">
	<div id="content">
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			
		
			
			<c:forEach var="temp" items="${STUDENT_LIST}">
			
			<!-- set up update url link -->
			<c:url var="updateLink" value="StudentControllerServlet">
				<c:param name="command" value="LOAD" />
				<c:param name="studentId" value="${temp.id}" />
			</c:url>
			
			<!-- set up delete url link -->
			<c:url var="deleteLink" value="StudentControllerServlet">
				<c:param name="command" value="REMOVE" />
				<c:param name="studentId" value="${temp.id}" />
			</c:url>
			
				<tr>
					<td> ${temp.firstName} </td>
					<td> ${temp.lastName} </td>
					<td> ${temp.email} </td>
					<td> <a href="${updateLink}">Update</a>
					|
					 <a href="${deleteLink}"
					 onclick="if( !(confirm('Are you sure you want to delete this student? '))) return false ">
					 Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
</html>