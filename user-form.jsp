<%@page import="com.usermanagement.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Simple Crud Application</title>
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

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="user != null">
					<form action="update.action" method="post">
				</c:if>
				<c:if test="user == null">
					<form action="create.action" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="user != null">
            			Edit User
            		</c:if>
						<c:if test="user == null">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="user != null">
					<input type="hidden" name="user.id" value='<c:property value='user.id'/>' />
				</c:if>

				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:property value='user.name'/>" class="form-control"
						name="user.name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="text"
						value="<c:property value='user.email'/>" class="form-control"
						name="user.email">
				</fieldset>

				<fieldset class="form-group">
					<label>User Country</label> <input type="text"
						value="<c:property value='user.country'/>" class="form-control"
						name="user.country">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>