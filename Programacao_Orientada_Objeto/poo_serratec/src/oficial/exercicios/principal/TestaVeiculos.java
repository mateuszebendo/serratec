package oficial.exercicios.principal;

import oficial.exercicios.classes.Carro;

public class TestaVeiculos {

	public static void main(String[] args) {
		 Carro simples = new Carro ("Hatch", 98, "Ford", 87);

	        simples.setNome("Escort");
	        simples.setAirbag(true);

	        System.out.println(simples);
		
	}

}
