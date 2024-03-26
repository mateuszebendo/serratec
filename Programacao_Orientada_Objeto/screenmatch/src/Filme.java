public class Filme {
    String nome;
    int anoDeLancamento;
    boolean incluidoNoPlano;
    private double somaDasAvalicoes;
    private int totalDeAvaliacoes;
    int duracaoEmMinutos;

    int getTotalDeAvaliacoes(){
        return totalDeAvaliacoes;
    }

    void exibeFichaTecnica(){
        System.out.println("Nome do filme: " + nome);
        System.out.println("Ano de lançamento: " + anoDeLancamento);
    }

    void avalia (double nota){
        somaDasAvalicoes += nota;
        totalDeAvaliacoes++;
    }

    double pegaMedia (){
        return somaDasAvalicoes/totalDeAvaliacoes;
    }
}
