package prova.classes;

sealed abstract class Artista  permits DJ, Banda, Cantor{
	public String nome; 
	public Genero genero_musical; 
	public double cache;
	
	public Artista (String nome, Genero genero_musical, double cache) {
		this.nome = nome; 
		this.genero_musical = genero_musical; 
		this.cache = cache;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setGenero_musical(Genero genero_musical) {
		this.genero_musical = genero_musical;
	}

	public void setCache(double cache) {
		this.cache = cache;
	}

	public Genero getGenero_musical() {
		return genero_musical;
	}
	
	public double getCache() {
		return cache;
	}
	
	@Override
	public String toString() {
		return nome + "/ Genero Musical:" + genero_musical;
	} 
	
}
