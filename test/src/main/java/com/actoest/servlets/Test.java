package com.actoest.servlets;

import java.io.IOException;

import com.actoest.beans.Auteur;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("heure", "soir");

		String message = "Au revoir !";
		request.setAttribute("variable", message);

		String name = request.getParameter("name");
		request.setAttribute("name", name);

		String lieu = request.getParameter("lieu");
		request.setAttribute("lieu", lieu);

		String[] noms = { "Matthieu", "Robert", "François" };
		request.setAttribute("noms", noms);

		Auteur auteur = new Auteur();
		auteur.setPrenom("Nicolas");
		auteur.setNom("Charrière-Duthoit");
		auteur.setActif(true);
		request.setAttribute("auteur", auteur);

		this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
