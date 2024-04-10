package poliformismo.coursera;
import java.util.ArrayList;
import java.util.List;


public abstract class Empregado {
	abstract int pagamentoDoMes();
	
	public static void main(String[] args) {
		List <Empregado> corpoDeTrabalho = new ArrayList<>();
		
		corpoDeTrabalho.add(new EmpregadoHorista(100, 100));
		corpoDeTrabalho.add(new EmpregadoMensalista(100, 100.30));
		corpoDeTrabalho.add(new EmpregadoAvulso(100));
		
		int custoTotal = 0; 
		for(Empregado trabalhador: corpoDeTrabalho)
			custoTotal += trabalhador.pagamentoDoMes();
		System.out.println("Minha fatura salarial neste mês vai custar " + custoTotal);
	}
}
