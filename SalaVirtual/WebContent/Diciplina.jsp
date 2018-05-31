<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.io.FileReader, java.io.BufferedReader, java.io.IOException, java.util.*, java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diciplina</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<h1 class="apresentacao">
		<img alt="logo"
			src="https://image.flaticon.com/icons/svg/43/43655.svg" height="50"
			width="50">SALA VIRTUAL
	</h1>
	<%
		int op = Integer.parseInt(request.getParameter("op"));
		
		switch (op) {
		case 1:
			//out.print("<p><h2> Programação Orientada a Objetos II</h2></p>");
			//request.getRequestDispatcher("Poo2.jsp").forward(request, response);
			
			try{
		         BufferedReader br = new BufferedReader(new FileReader("C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/DicPoo2.txt"));
		         while(br.ready()){
		            String linha = br.readLine();
		            out.print(linha+"<br>");
		         }
		         br.close();
		      }catch(IOException ioe){
		         ioe.printStackTrace();
		      }
			out.print("<form action=\"Diciplina.jsp?op=3 \" method=\"post\">"+
						"<input type=\"submit\" Value=\" Lista de alunos\">"+
					"</form>");
			out.print("<form action=\"Diciplina.jsp?op=5 \" method=\"post\">"+
					"<input type=\"submit\" Value=\" Materiais\">"+
				"</form>");
			break;
		case 2:
			try{
		         BufferedReader br = new BufferedReader(new FileReader("C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/DicPoo3.txt"));
		         while(br.ready()){
		            String linha = br.readLine();
		            out.print(linha+"<br>");
		         }
		         br.close();
		      }catch(IOException ioe){
		         ioe.printStackTrace();
		      }
			out.print("<form action=\"Diciplina.jsp?op=4 \" method=\"post\">"+
					"<input type=\"submit\" Value=\" Lista de alunos\">"+
				"</form>");
			out.print("<form action=\"Diciplina.jsp?op=6 \" method=\"post\">"+
					"<input type=\"submit\" Value=\" Materiais\">"+
				"</form>");
			break;
			
		case 3:
			try{
		         BufferedReader br = new BufferedReader(new FileReader("C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/ListaAlunoPOO2.txt"));
		         out.print("<p></p><h2 align=\"center\">Lista de Alunos de POOII</h2>"+
		         "<table border=\"2\" align=\"center\">"+
				         "<tr><th>Matricula</th> <th>Nome</th> <th>Turno</th></tr>");
		         while(br.ready()){
		        	 	out.print("<tr>");
		        	 	String linha = br.readLine();
			            out.print("<td>"+linha+"</td>");
			            linha = br.readLine();
			            out.print("<td>"+linha+"</td>");
			            linha = br.readLine();
			            out.print("<td>"+linha+"</td>");
						out.print("</tr>");
		         }
		         out.print("</table>");
		         out.print("<form action=\"Diciplina.jsp?op=7 \" method=\"post\">"+
							"<input type=\"submit\" Value=\" Adcionar alunos \">"+
						"</form>");
		         br.close();
		      }catch(IOException ioe){
		         ioe.printStackTrace();
		      }
			break;
		case 4:
			try{
		         BufferedReader br = new BufferedReader(new FileReader("C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/ListaAlunoPOO3.txt"));
		         out.print("<p></p><h2 align=\"center\">Lista de Alunos de POOIII</h2>"+
		         "<table border=\"2\" align=\"center\">"+
				         "<tr><th>Matricula</th> <th colspan=\"2\">Nome</th></tr>");
		         String linha = br.readLine();
		         while(br.ready()){
		        	 	out.print("<tr>");
			            out.print("<td>"+linha+"</td>");
			            linha = br.readLine();
			            out.print("<td>"+linha+"</td>");
						out.print("</tr>");
						linha = br.readLine();
		         }
		         out.print("</table>");
		         br.close();
		      }catch(IOException ioe){
		         ioe.printStackTrace();
		      }
			break;
		case 5:
			BufferedReader br = new BufferedReader(new FileReader("C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/MateriaisPOO2.txt"));

			break;
		case 7:
			out.print("<p></p><form action=\"CadastraAluno\" method=\"post\">"+
				    "<div>"+
				       	"<label for=\"name\">Nome:</label>"+
	        			"<input type=\"text\" name=\"nome\">"+
	    			"</div>"+
	    			"<div>"+
	        			"<label for=\"matricula\">Matrricula:</label>"+
	    	    		"<input type=\"text\" name=\"matricula\">"+
	    			"</div>"+
	    	    	"<label>Turno:</label>"+
	    			"<select name=\"turno\" class=\"button\">"+
						"<option value=\"manhã\">manhã</option>"+
						"<option value=\"tarde\">tarde</option>"+
						"<option value=\"noite\">noite</option>"+
					"</select>"+
	    	    	"<br><label>Diciplina:</label>"+
	    			"<select name=\"diciplina\" class=\"button\">"+
						"<option value=\"POOII\">POOII</option>"+
						"<option value=\"POOIII\">POOIII</option>"+
					"</select>"+
	    			"<div class=\"button\">"+
	        			"<button type=\"submit\">Cadastra aluno</button>"+
	    			"</div>"+
				"</form>");
			break;
		}
	%>
	<footer align="center">
    	© 2018 Projeto Sala Virtual - Todos os direitos reservados.
	</footer>

</body>
</html>