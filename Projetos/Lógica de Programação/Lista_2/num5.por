programa
{
	
	funcao inicio()
	{
		inteiro a, b, c

		escreva("Digite o número A: ")
		leia(a)
		
		escreva("Digite o número B: ")
		leia(b)
		
		escreva("Digite o número C: ")
		leia(c)

		se(a>b e a>c){
			se(b>c) escreva(a, "\n", b, "\n", c)
			senao escreva(a, "\n", c, "\n", b)
		}

		se(b>c e b>c){
			se(a>c) escreva(b, "\n", a, "\n", c)
			senao escreva(b, "\n", c, "\n", a)
		}
		
		se(c>b e c>a){
			se(b>a) escreva(c, "\n", b, "\n", a)
			senao escreva(c, "\n", a, "\n", b)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */