<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form:form action="updateRestaurant.do" method="POST"
			 modelAttribute="restaurant">
			<table border="8" cellpadding="20">
				<tr>
					<td>ID:</td>
					<td>${restaurant.id} <form:hidden path ="id"/>
					</td>
				</tr>
				<tr>
					<td>Nominated Year:</td>
					<td>${restaurant.nominatedYear}</td>
				</tr>
				<tr>
					<td>Nomination Title:</td>
					<td>${restaurant.nominationTitle}</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td>${restaurant.name}</td>
				</tr>
				<tr>
					<td>Address:</td>
					<td>${restaurant.address}</td>
				</tr>
				<tr>
					<td>Website:</td>
					<td>${restaurant.website}</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Updating"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>