<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<h2>Premiers exercices</h2>
	<p>Ceci est une page, bonjour à toutes et à tous !<br>
	
	<!-- JSTL Test -->
	<c:out value="Bonjour again! On essaye quelque chose"/>
	</p>
	<p>
		<%
		String name = (String) request.getAttribute("name");
		out.println("Bonjour surtout à " + name + " !");

		String lieu = (String) request.getAttribute("lieu");
		out.println("Nous savons que tu habites " + lieu + " !");
		%>

	</p>
	<p>
		<%
		String variable = (String) request.getAttribute("variable");
		out.println(variable);

		String heure = (String) request.getAttribute("heure");
		if (heure.equals("jour")) {
			out.println("Bonjour");
		} else {
			out.println("Bonsoir");
		}
		%>
	</p>

	<p>
		<%
		for (int i = 0; i < 5; i++) {
			out.println("Une nouvelle ligne <br/>");
		}
		%>
	</p>

	<!-- Utilisation des EL (Expressions languages) dans les JSP -->
	<p>Je te vois ${ empty name ? '' : name } et tu habites toujours à
		${ lieu } !</p>

	<p>Dans le tableau, le nom est ${ noms[1] }.</p>

	<h2>Exercices sur les auteurs</h2>
	<p>Bonjour ${ auteur.prenom } ${ auteur.nom }.</p>
	<p>${auteur.actif ? 'Vous êtes très actif !' : 'Vous êtes inactif (pas bien).'}</p>
	
	<h1>Tests sur les JSTL</h1>
	<p><c:out value="${ variable }" escapeXml="false">Valeur par défaut</c:out></p>
	
	<c:set var="pseudo" value="Mat29" scope="page"/> <!-- Scopes possibles: request, session, application... -->
	
	<p><c:out value="${ pseudo }"></c:out></p>
	
	<!-- On change la variable -->
	
	<c:set var="pseudo" value="Robert" scope="page"/>
	
	<p><c:out value="${ pseudo }"></c:out></p>
	
	<!-- On regarde avec les beans -->
	
	<p>Premier nom de l'auteur : <c:out value="${ auteur.prenom }"></c:out></p>
	<c:set target="${ auteur }" property="prenom" value="Benoît"/> <!-- On change le prénom de l'auteur -->
	<p>Prénom de l'auteur, mais changé : <c:out value="${ auteur.prenom }"></c:out></p>
	
	
</body>
</html>