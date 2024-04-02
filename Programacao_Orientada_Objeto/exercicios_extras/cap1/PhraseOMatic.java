public class PhraseOMatic {
	public static void main (String[] args){
        	String[] listaDePalavrasUm = {
            "24/7", "multicamadas", "30.000 pés", "B-to-B", "ganha-ganha", "front-end",
            "baseado na web", "difundido", "inteligente", "seis sigma", "caminho crítico", "dinâmico"
        };

        	String[] listaDePalavrasDois = {
            "habilitado", "adesivo", "valor agregado", "orientado", "central", "distribuído",
            "agrupado", "solidificado", "independente da máquina", "posicionado", "em rede", "dedicado",
            "alavancado", "alinhado", "destinado", "compartilhado", "cooperativo", "acelerado"
        };

		String[] listaDePalavrasTres = {
			"selecao", "habilitacao", "independente"};

		int oneLength = listaDePalavrasUm.length;
		int twoLength = listaDePalavrasDois.length; 
		int threeLength = listaDePalavrasTres.length;

		int rand1 = (int) (Math.random() * oneLength);
		int rand2 = (int) (Math.random() * twoLength);
		int rand3 = (int) (Math.random() * threeLength);

		String phrase = listaDePalavrasUm[rand1] + " " + listaDePalavrasDois[rand2] + " " + listaDePalavrasTres[rand3];

		System.out.println("Precisamos de " + phrase);

	}
}
