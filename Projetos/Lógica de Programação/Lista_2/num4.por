programa
{
	
	funcao inicio()
	{
		inteiro n 
		real S = 0.0
		escreva("Digite um valor inteiro e positivo para N: ")
		leia(n)

		para(inteiro i=1; i <= n; i++){
			S = 1.0/i + S
		}

		escreva(S)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */