<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>

	<div class="generic-container">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Lista de Funcionários</span>
			</div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Data de Admissão</th>
						<th>Salário</th>
						<th>Password</th>
						<th width="100"></th>
						<th width="100"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${employees}" var="employee">
						<tr>
							<td>${employee.name}</td>
							<td>${employee.joining_date}</td>
							<td>${employee.salary}</td>
							<td>${employee.ssn}</td>
							<td><a href="<c:url value='/edit-employee-${employee.id}' />"
								class="btn btn-success 
 
custom-width">editar</a></td>
							<td><a href="<c:url value='/delete-employee-${employee.id}' />"
								class="btn btn-danger 
 
custom-width">deletar</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="well">
			<ul>
			
			<li><a href="<c:url value='/newuser' />">Adicionar usuário</a></li>
			
			
			</ul>
		</div>
	</div>

</body>
</html>