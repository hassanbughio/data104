<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="#" class="navbar-brand"> User Management Application </a>
			</div>

<!-- <a id="u-list" href="user-list.action">Users</a>
			<ul class="navbar-nav">
				<li></li>
			</ul>
		</nav> -->
	</header>

	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="adduser.action" class="btn btn-success">Add New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Country</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>

					<c:iterator value="userlist">

						<tr>
							<td><c:property value="id" /></td>
							<td><c:property value="name" /></td>
							<td><c:property value="email" /></td>
							<td><c:property value="country" /></td>
							<td><a href="edit.action?id=<c:property value='id' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:property value='id' />">Delete</a></td>
						</tr>
					</c:iterator>

				</tbody>

			</table>
		</div>
	</div>

</body>
</html>