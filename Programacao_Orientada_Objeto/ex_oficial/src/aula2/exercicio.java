package aula2;

public class exercicio {

    public static void main(String[] args){
        String produto1 = "Anchovas";
        String produto2 = "Sapato";
        String produto3 = "Vassoura";
        double preco1 = 10.76;
        double preco2 = 50.5;
        double preco3 = 8.6;
        int quantidade1 = 10;
        int quantidade2 = 4;
        int quantidade3 = 7;

        double totalcomDesconto = ((preco1*quantidade1) + (preco2*quantidade2) + (preco3*quantidade3)) * 0.9;

        System.out.println("Produto: " + produto1 + "\nPreço: R$" + preco1);
        System.out.println("Produto: " + produto2 + "\nPreço: R$" + preco2);
        System.out.println("Produto: " + produto3 + "\nPreço: R$" + preco3);
        System.out.println("Total dos produtos: R$" + ((preco1*quantidade1) + (preco2*quantidade2) + (preco3*quantidade3)) + "\nTotal com 10% de desconto: R$" + totalcomDesconto);
    }
}