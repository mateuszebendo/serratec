package oficial.exercicios.classes;

public class Livro {
	public String autor; 
	public String titulo; 
	public double valor; 
	
	public Livro (String autor, String titulo, double valor) {
		this.autor = autor; 
		this.titulo = titulo; 
		this.valor = valor;
	}
	
	public String toString(){
		return autor + " " + titulo + " " + valor; 
	}

	public String getAutor() {
		return autor;
	}

	public String getTitulo() {
		return titulo;
	}

	public double getValor() {
		return valor;
	}
	
    public double reajuste (double adicional) {
    	return valor + adicional;
    }
}
