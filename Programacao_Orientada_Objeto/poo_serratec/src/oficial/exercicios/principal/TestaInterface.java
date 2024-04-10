package oficial.exercicios.principal;
import oficial.exercicios.classes.Livro;
import oficial.exercicios.classes.Operacao;

public class TestaInterface {
	public static void main (String[] args) {
		Livro livro = new Livro("Erick Evans", "Domain-Drive Design", 120);
		Livro livro2 = new Livro("Joao", "O brilho de uma mente sem lembrança", 98.5);
		
		Operacao operacao1 = new Operacao();
		
		operacao1.setLivro(livro);
		operacao1.vender();
		
		Operacao operacao2 = new Operacao();
		
		operacao2.setLivro(livro2);
		operacao2.vender();
		
		System.out.println(operacao1);
		System.out.println(operacao2);
		
		livro2.reajuste(35);
		operacao2.emprestar();
		System.out.println(operacao2);
	}
}
