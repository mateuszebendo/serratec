package poliformismo.coursera;

public class EmpregadoHorista extends Empregado{

	private int salarioPorHora; 
	private int horasTrabalhadas;

	public EmpregadoHorista(int salarioPorHora, int horasTrabalhadas) {
		super();
		this.salarioPorHora = salarioPorHora;
		this.horasTrabalhadas = horasTrabalhadas;
	}

	public int pagamentoDoMes() {
		return salarioPorHora*horasTrabalhadas;
	}
	
	public String toString() {
		return "Sou um empregado horista, ganho R$" + pagamentoDoMes();
	}
}
