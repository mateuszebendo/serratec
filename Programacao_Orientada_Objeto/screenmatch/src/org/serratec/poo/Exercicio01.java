import java.util.Scanner;

class Exercicio01{
	public void main(String[] args) {
		int numero1;
		int numero2;
		String continua = "S";
		
		Scanner leitura = new Scanner(System.in);
		while(continua.equalsIgnoreCase("S")) {
			System.out.print("Digite um valor para X: "); 
			numero1 = leitura.nextInt();
			
			System.out.print("Digite um valor para Y: "); 
			numero2 = leitura.nextInt();
			
			leitura.nextLine();
			
			System.out.println("Soma: " + numero1+numero2);
			
			if (numero2 > numero1) {
				System.out.println("Não posso subtrair!");
			} else {
				System.out.println("Subtração: " + (numero1-numero2));
			}
			
			System.out.println("Multiplicação: " + (numero1*numero2));
			
			if(numero2 == 0) {
				System.out.println("Não posso dividir por 0");
			} else {
				System.out.println("Divisão: " + (numero1/numero2));
			}
			
			System.out.print("Deseja continuar ? S/N");
			continua = leitura.nextLine();
		}
  }
}