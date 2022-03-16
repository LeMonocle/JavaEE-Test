<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<h2>Premiers exercices</h2>
	<p>Ceci est une page, bonjour à tous !</p>
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
</body>
</html>