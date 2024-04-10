package poliformismo.coursera;

public class EmpregadoMensalista extends Empregado{

	private int salarioMensal; 
	private double taxaEncargosTrabalhistas; 
	
	public EmpregadoMensalista(int salarioMensal, double taxaEncargosTrabalhitas) {
		this.salarioMensal = salarioMensal;
		this.taxaEncargosTrabalhistas = taxaEncargosTrabalhitas;
	}
	
	public int pagamentoDoMes() {
		return (int)(salarioMensal*taxaEncargosTrabalhistas);
	}
}
