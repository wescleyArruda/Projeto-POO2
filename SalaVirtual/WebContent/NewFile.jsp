<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Aluno"%>
<%@page import="java.io.IOException"%>
<%@page import="org.ietf.jgss.Oid"%>
<%@page import="java.util.Set"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.io.FileReader,java.io.BufferedReader,java.io.IOException"
	import="java.util.ArrayList" import="java.util.List"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="StyleSheet" type="text/css" href="css/style.css" />
<title>Disciplina</title>

</head>

<body>
	<h1 class="apresentacao">
		<img alt="logo"
			src="https://image.flaticon.com/icons/svg/43/43655.svg" height="50"
			width="50">SALA VIRTUAL
	</h1>
	<div id="header" class="header">

		<div id="logo" class="header"></div>

		<div id="titulo_pagina" class="leftColumn">
			<p>
			<h2 align="center">
				<%
					int op = Integer.parseInt(request.getParameter("op"));
					if (op == 1) {
						out.print("<p></p><h2 align=\"center\">Lista de Alunos de POOII</h2>");
					} else {
						out.print("<p></p><h2 align=\"center\">Lista de Alunos de POOIII</h2>");
					}
				%>
			</h2>

		</div>

	</div>


	<div class="leftColumn">
		<jsp:useBean id="controleAluno" scope="request"
			class="controle.ControleObjetos" />
		<%
			List<Aluno> alunos = new ArrayList<Aluno>(controleAluno.retornaAluno());

			out.print("<table border=\"2\" align=\"center\">"
					+ "<tr><th>Matricula</th> <th>Nome</th> <th>Turno</th></tr>");
			for (Aluno a : alunos) {
				out.print("<tr>");

				out.print("<td>" + a.getMatricula() + "</td>");
				out.print("<td>" + a.getNome() + "</td>");
				out.print("<td>" + a.turno + "</td>");
				out.print("</tr>");
			}
			out.print("</table>");

			out.print("<form action=\"Diciplina.jsp?op=7 \" method=\"post\">"
					+ "<input type=\"submit\" Value=\" Adcionar alunos \">" + "</form>");
		%>




	</div>

	<div id="footer" class="alinhamento">
		<p>© 2018 Projeto Sala Virtual - Todos os direitos reservados.</p>
	</div>
</body>

</html>