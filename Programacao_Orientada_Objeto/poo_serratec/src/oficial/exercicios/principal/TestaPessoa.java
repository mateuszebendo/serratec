package oficial.exercicios.principal;

import oficial.exercicios.classes.Pessoa;
import java.util.Scanner;

public class TestaPessoa {
	public static void main(String[] args) {
		Pessoa joao = new Pessoa("Pepê", "Não-binárie", 24, 65.5, 1.85);
		System.out.print(joao);
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Deseja alterar algum dado? S/N");
		String continua = leia.nextLine();
		
		while(continua.equalsIgnoreCase("S")) {
			System.out.println("Novo nome: ");
			String nome = leia.nextLine();
			joao.setName(nome);
			
			System.out.println("Novo genêro: ");
			String genero = leia.nextLine();
			joao.setGender(genero);
		
			System.out.println("Nova idade: ");
			int idade = leia.nextInt();
			leia.nextLine();
			joao.setAge(idade); 
			
			System.out.println("Novo peso: ");
			double peso = leia.nextDouble();
			leia.nextLine();
			joao.setWeight(peso);
			
			System.out.println("Nova altura: ");
			double altura = leia.nextDouble();
			leia.nextLine();
			joao.setHeight(altura);
			
			System.out.print(joao);
			
			System.out.println("Deseja alterar novamente os dados? S/N");
			continua = leia.nextLine();
		}
		
		leia.close();
		System.out.println("Fim do programa.");
	}
}
