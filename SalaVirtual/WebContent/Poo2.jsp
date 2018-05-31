<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body>
<p><h2 align="center"> Programa��o Orientada a Objetos II</h2></p>
	<div class="leftColumn">
	<h3><%
		out.println("<h2>Emenda</h2>");
		out.println("<p>Nessa disciplina, o aluno ir� aprimorar a capacidade de construir programas utilizando o paradigma orientado a"+
		"objetos. Ao final do curso o aluno estar� apto a desenvolver sistemas para Web, baseadas na tecnologia Java, para"+
		"pequenas, m�dias e grandes empresas.</p>");
	%></h3>
	</div>
	<div class="leftColumn">
	<%
		out.println("<h2>Metodologia</h2>");
		out.println("<p>Os alunos estar�o aptos a desenvolver os conceitos e t�cnicas de desenvolvimento de sistemas mediante aulas" +
				"expositivas e participativas, com pr�ticas em laborat�rio aplicando o conhecimento te�rico desenvolvido durante" +
				"as aulas. O aluno ser� avaliado atrav�s de sua participa��o e por trabalho pr�tico, com �nfase no desenvolvimento" +
				"de um sistema Web.</p>");
		
	%>
	</div>
	<div class="leftColumn">
	<%
		out.println("<h2>Conte�dos</h2>");
		out.println("<p>1- Revis�o de conceitos sobre o paradigma orientado a objetos. Classes, M�todos e Objetos. Heran�a. "+
				"Polimorfismo: Interfaces e Classes abstratas;<br>"+
				"2- Arquitetura Web. Arquiteturas de aplica��es Web. Modelo cliente-servidor. Modelo Peer-to-peer. Modelo "+
				"cliente-servidor utilizado pelo protocolo HTTP. Conceitos de Web services. Tecnologias para o"+
				"desenvolvimento Web.<br>"+
				"3- Introdu��o a linguagem de Marca��o HTML. Tags HTML. Estrutura de uma p�gina HTML. Constru��o de "+
				"formul�rios.<br>"+
				"4- Introdu��o a Cascading Style Sheets (CSS). Editando estilos de p�ginas. Formatando p�ginas.<br>"+
				"5- Apresenta��o sobre os Servlets. Web Containers. Ciclo de vida dos Servlets. Gerenciamento de contexto em "+
				"aplica��es Web. Funcionamento do mapeamento dos Servlets.<br> "+
				"6- Introdu��o ao JSP (JavaServer Pages). Benef�cios na utiliza��o do JSP. Descri��o do funcionamento e uso do "+
				"JSP. Descri��o das diretivas do JSP. Utiliza��o dos conceitos de JavaBeans em p�ginas JSP. Scriptlet x "+
				"Expression Language x Taglibs x JSTL.<br>"+
				"7- Introdu��o � tecnologia JSF (JavaServer Faces). Procedimentos para a configura��o e utiliza��o dessa "+
				"tecnologia. Utiliza��o de classes 'Backing Bean'. Realizando mapeamento das classes Bean. Gerenciamento "+
				"da navega��o de p�ginas com JSF.<br>"+
				"8- Introdu��o aos padr�es de projeto. Padr�es de projeto DAO (Data Access Object) e MVC (Model-ViewController), "+
				"apresentando em quais cen�rios dever�o ser utilizados. Desenvolvimento de uma aplica��o "+
				"utilizando os padr�es de projeto DAO e MVC.<br>"+
				"9- Apresenta��o dos conceitos sobre ORM (Object Relational Mapping) e JPA (Java Persistence API). Introdu��o "+
				"ao Hibernate. Mapeamento de dados com o Hibernate. Realizando a persist�ncia de dados com o Hibernate "+
				"em aplica��es Java.<br>"+
				"10- Procedimentos para desenvolvimento sobre a plataforma Java. Introdu��o ao EJB (Enterprise JavaBeans). "+
				"Session Bean. Message-Driven Bean. Ciclo de vida do EJB: Stateless e Stateful Session Bean. Singleton "+
				"Session Bean.</p>");	
	%>
	</div>
</body>
</html>