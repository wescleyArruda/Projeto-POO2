package controle;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.InterningXmlVisitor;

import modelo.Aluno;

/**
 * Servlet implementation class CadastraAluno
 */
@WebServlet("/CadastraAluno")
public class CadastraAluno extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CadastraAluno() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		
		// carregar em memória
		String caminho=null;
		int poo =Integer.parseInt(request.getParameter("POO"));
		if(poo == 1 || poo==3) {
			caminho="C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/ListaAlunoPoo2.txt";
		}else {
			if(poo==2 || poo== 4) {
				caminho="C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/ListaAlunoPoo3.txt";
			}
		}
		
		ControleObjetos controleAluno = new ControleObjetos();
		
		try {
			BufferedReader br = new BufferedReader(new FileReader(caminho));
			while (br.ready()) {
				int matriculaTxt = Integer.parseInt(br.readLine());
				String nomeTxt = br.readLine();
				String turnoTxt = br.readLine();
				controleAluno.cadastoAluno(matriculaTxt, nomeTxt, turnoTxt);
			}
			br.close();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		
		if(poo==3|| poo==4) {
			int matricula = Integer.parseInt(request.getParameter("matricula"));
			String nome = request.getParameter("nome");
			String turno = request.getParameter("turno");

			Aluno aluno = new Aluno();
			aluno.setMatricula(matricula);
			aluno.setNome(nome);
			aluno.setTurno(turno);
			
			controleAluno.cadastoAluno(matricula, nome, turno);
		}

		request.setAttribute("controleAluno", controleAluno);
		if(poo == 1 || poo==3) {
			request.getRequestDispatcher("NewFile.jsp?op=1").forward(request, response);
		}else {
			if(poo==2 || poo== 4) {
				request.getRequestDispatcher("NewFile.jsp?op=2").forward(request, response);
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
