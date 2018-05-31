<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body>
<p><h2 align="center"> Programação Orientada a Objetos II</h2></p>
	<div class="leftColumn">
	<h3><%
		out.println("<h2>Emenda</h2>");
		out.println("<p>Nessa disciplina, o aluno irá aprimorar a capacidade de construir programas utilizando o paradigma orientado a"+
		"objetos. Ao final do curso o aluno estará apto a desenvolver sistemas para Web, baseadas na tecnologia Java, para"+
		"pequenas, médias e grandes empresas.</p>");
	%></h3>
	</div>
	<div class="leftColumn">
	<%
		out.println("<h2>Metodologia</h2>");
		out.println("<p>Os alunos estarão aptos a desenvolver os conceitos e técnicas de desenvolvimento de sistemas mediante aulas" +
				"expositivas e participativas, com práticas em laboratório aplicando o conhecimento teórico desenvolvido durante" +
				"as aulas. O aluno será avaliado através de sua participação e por trabalho prático, com ênfase no desenvolvimento" +
				"de um sistema Web.</p>");
		
	%>
	</div>
	<div class="leftColumn">
	<%
		out.println("<h2>Conteúdos</h2>");
		out.println("<p>1- Revisão de conceitos sobre o paradigma orientado a objetos. Classes, Métodos e Objetos. Herança. "+
				"Polimorfismo: Interfaces e Classes abstratas;<br>"+
				"2- Arquitetura Web. Arquiteturas de aplicações Web. Modelo cliente-servidor. Modelo Peer-to-peer. Modelo "+
				"cliente-servidor utilizado pelo protocolo HTTP. Conceitos de Web services. Tecnologias para o"+
				"desenvolvimento Web.<br>"+
				"3- Introdução a linguagem de Marcação HTML. Tags HTML. Estrutura de uma página HTML. Construção de "+
				"formulários.<br>"+
				"4- Introdução a Cascading Style Sheets (CSS). Editando estilos de páginas. Formatando páginas.<br>"+
				"5- Apresentação sobre os Servlets. Web Containers. Ciclo de vida dos Servlets. Gerenciamento de contexto em "+
				"aplicações Web. Funcionamento do mapeamento dos Servlets.<br> "+
				"6- Introdução ao JSP (JavaServer Pages). Benefícios na utilização do JSP. Descrição do funcionamento e uso do "+
				"JSP. Descrição das diretivas do JSP. Utilização dos conceitos de JavaBeans em páginas JSP. Scriptlet x "+
				"Expression Language x Taglibs x JSTL.<br>"+
				"7- Introdução à tecnologia JSF (JavaServer Faces). Procedimentos para a configuração e utilização dessa "+
				"tecnologia. Utilização de classes 'Backing Bean'. Realizando mapeamento das classes Bean. Gerenciamento "+
				"da navegação de páginas com JSF.<br>"+
				"8- Introdução aos padrões de projeto. Padrões de projeto DAO (Data Access Object) e MVC (Model-ViewController), "+
				"apresentando em quais cenários deverão ser utilizados. Desenvolvimento de uma aplicação "+
				"utilizando os padrões de projeto DAO e MVC.<br>"+
				"9- Apresentação dos conceitos sobre ORM (Object Relational Mapping) e JPA (Java Persistence API). Introdução "+
				"ao Hibernate. Mapeamento de dados com o Hibernate. Realizando a persistência de dados com o Hibernate "+
				"em aplicações Java.<br>"+
				"10- Procedimentos para desenvolvimento sobre a plataforma Java. Introdução ao EJB (Enterprise JavaBeans). "+
				"Session Bean. Message-Driven Bean. Ciclo de vida do EJB: Stateless e Stateful Session Bean. Singleton "+
				"Session Bean.</p>");	
	%>
	</div>
</body>
</html>