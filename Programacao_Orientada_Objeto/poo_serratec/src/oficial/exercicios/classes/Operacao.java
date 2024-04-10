package oficial.exercicios.classes;

public class Operacao implements Opcao {
	public String tipo;
	public double valorOperacao; 
	Livro livro; 
	
	public String toString() {
		return tipo + " " + valorOperacao + " " + " " + livro;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Livro getLivro() {
		return livro;
	}

	public void setLivro(Livro livro) {
		this.livro = livro;
	}

	public double getValorOperacao() {
		return valorOperacao;
	}
	
	 @Override
	    public void emprestar() {
	        tipo = "Emprestimo";
	        valorOperacao = livro.getValor() * Opcao.TAXA_EMPRESTIMO / 100;

	    }

	    @Override
	    public void vender() {
	        tipo = "Venda";
	        valorOperacao = livro.getValor();
	    }
}
