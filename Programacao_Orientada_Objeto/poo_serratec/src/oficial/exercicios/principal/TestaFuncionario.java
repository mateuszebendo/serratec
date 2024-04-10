package oficial.exercicios.principal;

import java.util.Scanner;

import oficial.exercicios.classes.Funcionario;
import oficial.exercicios.classes.Gerente;
import oficial.exercicios.classes.Vendedor;

public class TestaFuncionario {

	public static void main(String[] args) {
		Scanner leitura = new Scanner(System.in);
		Funcionario funcionario = null;
		
		String mensagem = """
				Escolha uma opção
				1 - cadastrar um gerente
				2 - cadastrar um vendedor
				3 - sair
				""";
		System.out.println(mensagem);
		int opcao = leitura.nextInt();
		leitura.nextLine();
		
		String nome = "";
		double salario = 0.0;
		
		if (opcao != 3) {
			System.out.println("Digite o nome");
			nome = leitura.nextLine();
			System.out.println("Digite o salário");
			salario = leitura.nextDouble();
		}
		
		if (opcao == 1) {
			funcionario = new Gerente(nome, salario);		
		} else if (opcao == 2) {
			funcionario = new Vendedor(nome, salario);			
		} else {
			System.out.println("Encerrando");
		}
		
		if (opcao != 3) {
			System.out.println(funcionario);
			System.out.println("Digite um percentual de reajuste: ");
			var valorReajuste = leitura.nextDouble();
			funcionario.reajustaSalario(valorReajuste);
			System.out.println("Novo salário: " + funcionario.getSalario());	
		}
		
		if (funcionario instanceof Gerente) {
			System.out.println("é um gerente");
		} else {
			System.out.println("é um vendedor");
		}
			
		leitura.close();
	}
}