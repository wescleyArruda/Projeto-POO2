package controle;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

		int matricula = Integer.parseInt(request.getParameter("matricula"));
		String nome = request.getParameter("nome");
		String turno = request.getParameter("turno");

		Aluno aluno = new Aluno();
		aluno.setMatricula(matricula);
		aluno.setNome(nome);
		aluno.setTurno(turno);

		// carregar em memória
		ControleObjetos controleAluno = new ControleObjetos();

		try {
			BufferedReader br = new BufferedReader(new FileReader(
					"C:/Users/Wescley/eclipse-workspace/SalaVirtual/WebContent/Diciplinas/ListaAlunoPoo2.txt"));
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
		controleAluno.cadastoAluno(matricula, nome, turno);

		request.setAttribute("controleAluno", controleAluno);
		request.getRequestDispatcher("NewFile.jsp").forward(request, response);
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
