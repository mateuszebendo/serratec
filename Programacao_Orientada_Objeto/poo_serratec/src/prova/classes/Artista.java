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
	
	@Override
	public String toString() {
		return nome + "/ Genero Musical:" + genero_musical;
	} 
	
}
