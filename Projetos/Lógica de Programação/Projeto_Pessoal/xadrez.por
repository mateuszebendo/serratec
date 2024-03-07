programa
{
	const inteiro oito = 8 
	funcao inicio()
	{
	 	inteiro tabuleiro[7][7]
	 	inteiro linha = 0 
	 	inteiro coluna = 3
	 	logico verficador = falso

		
	  	escrever_na_tela(tabuleiro, linha, coluna)
		
	}

	funcao escrever_na_tela (inteiro tabuleiro[][], inteiro linha, inteiro coluna){
		para(inteiro i = 0; i < oito; i++){
			escreva("\n ---------------------------------")
			escreva("\n")
			para(inteiro j = 0; j < oito; j++){
				se(linha == i e coluna == j) escreva("| P ")
				senao escreva("|  ")
		}
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */