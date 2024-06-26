package oficial.exercicios.classes;

public class Veiculo {
	    private String tipo;
	    private int ano;
	    private String marca;

	    public String getTipo() {
	        return tipo;
	    }

	    public void setTipo(String tipo) {
	        this.tipo = tipo;
	    }

	    public int getAno() {
	        return ano;
	    }

	    public void setAno(int ano) {
	        this.ano = ano;
	    }

	    public String getMarca() {
	        return marca;
	    }

	    public void setMarca(String marca) {
	        this.marca = marca;
	    }

	    public Veiculo(String tipo, int ano, String marca) {
	        this.tipo = tipo;
	        this.ano = ano;
	        this.marca = marca;
	    }
	}