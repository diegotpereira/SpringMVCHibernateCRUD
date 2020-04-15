<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users List</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Lista de Usuários </span>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Sobrenome</th>
						<th>Email</th>
						<th>SSO ID</th>
						<th width="100"></th>
						<th width="100"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.ssoId}</td>
							<td><a href="<c:url value='/edit-user-${user.ssoId}' />"
								class="btn btn-success 
 
custom-width">editar</a></td>
							<td><a href="<c:url value='/delete-user-${user.ssoId}' />"
								class="btn btn-danger 
 
custom-width">deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="well">
			<ul>
			
			<li><a href="<c:url value='/newuser' />">Adicionar novo usuário</a>      </li>
			<li><a href="<c:url value='/addemployee' />">Adicionar novo funcionário</a> </li>
			
			</ul>
		</div>
	</div>
</body>
</html>