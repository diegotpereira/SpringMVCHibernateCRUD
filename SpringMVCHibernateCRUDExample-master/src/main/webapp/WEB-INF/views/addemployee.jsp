<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Form</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>

<div class="generic-container">
		<div class="well lead">Employee Registration Form</div>
		<form:form method="POST" modelAttribute="employee" class="form-horizontal">
			<form:input type="hidden" path="id" id="id" />

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="name">Name</label>
					<div class="col-md-7">
						<form:input type="text" path="name" id="name"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="name" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="joining_date">Joining Date</label>
					<div class="col-md-7">
						<form:input type="text" path="joining_date" id="joining_date"
  							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="joining_date" class="help-inline" />
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="salary">Salary</label>
					<div class="col-md-7">
						<form:input type="text" path="salary" id="salary"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="salary" class="help-inline" />
						</div>
					</div>
				</div>
			</div>



			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="ssn">ssn</label>
					<div class="col-md-7">
						<form:input type="password" path="ssn" id="ssn"
							class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="ssn" class="help-inline" />
						</div>
					</div>
				</div>
			</div>

		

	

       <div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/list' />">Cancel</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register"
								class="btn btn-primary btn-sm" /> or <a
								href="<c:url value='/list' />">Cancel</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
		
		<div class="well">
			<ul>
			
			<li><a href="<c:url value='/employeeslist' />">List employees</a>      </li>
			
			
			</ul>
		</div>
	</div>
	</div>
</body>
</html>