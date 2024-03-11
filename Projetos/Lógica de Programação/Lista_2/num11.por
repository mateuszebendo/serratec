programa
{	
	
	funcao inicio()
	{
		inteiro x
		
		escreva("Digite um valor inteiro para x: ")
		leia(x)
		
		inteiro j = 1
		escreva("\nNúmeros pares: ")
		para(inteiro i = 0; i < x; i++){
			se(i%2 == 0){
			escreva("\n", j, "º: ", i)
			j++	
			}
		}

		j = 1
		escreva("\nNúmeros ímpares: ")
		para(inteiro i = 0; i < x; i++){
			se(i%2 != 0){
			escreva("\n", j, "º: ", i)
			j++	
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */