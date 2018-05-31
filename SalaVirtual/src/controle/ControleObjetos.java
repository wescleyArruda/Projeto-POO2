package controle;


import java.util.ArrayList;
import java.util.List;


import modelo.Aluno;

public class ControleObjetos {
	private List<Aluno> alunos;
	
	public ControleObjetos() {
		this.alunos= new ArrayList<Aluno>();
	}
	
	public boolean cadastoAluno(int matricula, String nome, String turno){
		for (Aluno a : alunos) {
			if(a.getMatricula() == matricula) {
				return false;
			}
		}
		Aluno novoAluno = new Aluno(nome,matricula,turno);
		alunos.add(novoAluno);
		return true;
	}
	public List<Aluno> retornaAluno() {
		return alunos;
	}
	
	
}
