package prova.classes;

public final class Cantor extends Artista{
	public String nacionalidade;
	public Cantor (String nome, Genero genero, double cache) {
		super(nome, genero, cache);
		this.nacionalidade = nacionalidade;
	}
	
	public String getNacionalidade () {
		return nacionalidade;
	}

}
