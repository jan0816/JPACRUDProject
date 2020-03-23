<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Updating Restaurant</title>
</head>
<body>
	<div align="center">
		<form:form action="updateDisplay.do" method="post"
			modelAttribute="restaurant">
			<table border="8" cellpadding="20">
				<tr>
					<td>ID:</td>
					<td>${restaurant.id}<form:hidden path="id" /> <form:hidden
							path="chefHospitalityGroup" /> <form:hidden path="cuisineType" />
					</td>
				</tr>
				<tr>
					<td>Nominated Year:</td>
					<td><form:input path="nominatedYear" /></td>
				</tr>
				<tr>
					<td>Nomination Title:</td>
					<td><form:input path="nominationTitle" /></td>
				</tr>

				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr>
					<td>Website:</td>
					<td><form:input path="website" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Updating"></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>