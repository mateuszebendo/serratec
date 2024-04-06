package oficial.exercicios.classes;

public class Cidade {
	public String nomeCidade; 
	public Estado estado; 
	
	public Cidade (String nomeCidade, Estado estado) {
		this.nomeCidade = nomeCidade; 
		this.estado = estado;
	}

	@Override
	public String toString() {
		return "Cidade [nomeCidade=" + nomeCidade + ", estado=" + estado + "]";
	}

	public String getNomeCidade() {
		return nomeCidade;
	}

	public Estado getEstado() {
		return estado;
	}
	
	
}
