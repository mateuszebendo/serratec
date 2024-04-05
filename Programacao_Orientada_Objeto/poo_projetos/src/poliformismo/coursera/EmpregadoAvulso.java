package poliformismo.coursera;

public class EmpregadoAvulso extends Empregado{
	private int pagamento; 
	
	public EmpregadoAvulso(int pagamento) {
		super();
		this.pagamento = pagamento;
	}

	int pagamentoDoMes() {
		return pagamento;
	}
}
