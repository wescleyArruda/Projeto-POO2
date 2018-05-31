package modelo;

public class Aluno {
	public String nome;
	public int matricula;
	public String turno;
	
	public Aluno() {
		
	}
	public Aluno(String nome,int matricula,String turno) {
		this.matricula= matricula;
		this.nome =nome;
		this.turno = turno;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getMatricula() {
		return matricula;
	}
	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}
	public String getTurno() {
		return turno;
	}
	public void setTurno(String turno) {
		this.turno = turno;
	}
	
	
}
