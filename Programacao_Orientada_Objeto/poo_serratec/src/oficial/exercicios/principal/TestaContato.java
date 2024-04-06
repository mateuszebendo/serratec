package oficial.exercicios.principal; 
import java.util.ArrayList;
import java.util.List;

import oficial.exercicios.classes.Cidade;
import oficial.exercicios.classes.Contato;
import oficial.exercicios.classes.Endereco;
import oficial.exercicios.classes.Estado;
import oficial.exercicios.classes.Telefone;

public class TestaContato {
	public static void main(String[] args) {
		Contato novoContato = new Contato("Jaqueline", 
				new Endereco("Rua ABC, 123", "Olaria", "987654321", 
						new Cidade("Friburgo", 
								new Estado("Espírito Santo", "ES"))));
		
		System.out.println(novoContato);
		
		Estado rj = new Estado("Rio de Janeiro", "RJ");
		Cidade friburgo = new Cidade("Nova Friburgo", rj);
		Endereco endereco = new Endereco("Rua A, 12", "Olaria", "12345-885", friburgo);
		Contato contato2 = new Contato("Joao", endereco);
		
		System.out.println(contato2); 
		
		Telefone telefone1 = new Telefone("22988678798");
		Telefone telefone2 = new Telefone("21889944678");
		Telefone telefone3 = new Telefone("i9878767811");
		
		List <Telefone> telefones = new ArrayList<>();
		telefones.add(telefone1);
		telefones.add(telefone2);
		telefones.add(telefone3);
		
		contato2.setTelefones(telefones);
		
		System.out.println(contato2);
		
		
	}
}
