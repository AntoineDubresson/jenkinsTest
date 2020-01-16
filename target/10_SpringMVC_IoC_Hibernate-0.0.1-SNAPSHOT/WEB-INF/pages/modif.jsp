<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--  ajouter la taglib form de srping -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modif</title>
<link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.css"/>" />
</head>
<body>
	<%@include file="../../assets/template/header.html"%>
	<h1 style="color: red; text-align: center;">Formulaire de modif</h1>


	<form:form mthod="POST" action="submitAdd" modelAttribute="eUpdate"> 
		ID : <form:input path="id" />
		<br />
Nom : <form:input path="nom" />
		<br />
Prénom: <form:input path="prenom" />
		<br />
Date: <form:input type="date" path="dn" />
		<br />
		<input type="submit" value="Modifier" />
	</form:form>

	<h1 style="color: red; text-align: center;">${msg}</h1>
</body>
</html>