<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Ajouter la lib core de jstl -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- AJouter la lib fmt de jstl qui sert à l'internationalisation de mon application -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil</title>

<!--  lier le fichier css à ma page car boostrap ne se trouve pas dans le même fichier que ma page -->
<link rel="stylesheet" href="<c:url value="/assets/css/bootstrap.css"/>" />


</head>
<body>
	<%@include file="../../assets/template/header.html"%>


	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Date</th>
			<th>Opérations</th>
		</tr>

		<c:forEach var="e" items="${etudiants}">
			<tr>
				<td>${e.id}</td>
				<td>${e.nom}</td>
				<td>${e.prenom}</td>
				<td>${e.dn}</td>
				<td><a href="<c:url value='/ecole/submitDelete?pId=${e.id}'/>">Supprimer
				</a> | <a href="<c:url value='/ecole/linkUpdate?pId=${e.id}'/>">Modifier</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>