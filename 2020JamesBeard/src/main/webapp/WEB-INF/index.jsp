<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>2020 James Beard CO</title>
</head>
<body>


	<h1 align="center">2020 JAMES BEARD</h1>
	<h3 align="center">Colorado Nominations</h3>

	<form action="listAllNominations.do" method="GET" class="form">
		<input type="submit" value="List All Nominations" class="form-control" />
	</form>
	<form action="addRestaurant.do" method="POST" class="form">
		<input type="submit" border="10" value="Add Restaurant" class="form-control" />
	</form>
	<form action="updateRestaurant.do" method="POST" class="form">
		<input type="submit" border="10" value="Update Restaurant" class="form-control" />
	</form>
	<form action="delete.do" method="POST" class="form">
		<input type="submit" border="10" value="Delete Nomination" class="form-control" />
	</form>

	<table border="10" cellpadding="1">
		<tr>
			<th>ID</th>
			<th>Nominated Year</th>
			<th>Nomination Title</th>
			<th>Name</th>
			<th>Cuisine Type</th>
			<th>Address</th>
			<th>Chef/Hospitality Group</th>
			<th>Website</th>
		</tr>
		<thead>
		<tbody>
			<c:forEach items="${restaurant}" var="restaurant">
				<tr>

					<td>${restaurant.id}</td>
					<td>${restaurant.nominatedYear}</td>
					<td>${restaurant.nominationTitle}</td>
					<td>${restaurant.name}</td>
					<td>${restaurant.cuisineType}</td>
					<td>${restaurant.address}</td>
					<td>${restaurant.chefHospitalityGroup}</td>
					<td><a href="${restaurant.website}">${restaurant.website}</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
