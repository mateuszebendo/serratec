programa
{
	
	funcao inicio()
	{
		inteiro matriz[5][5]

		para(inteiro i=0; i < 5; i++){
			para(inteiro j=0; j<5; j++){
				se(i == j) matriz[i][j] = 1
				senao matriz[i][j] = 0
			}
		}
		para(inteiro i = 0; i < 5; i++){
			escreva("\n", i, ": ")
			para(inteiro j=0; j<5; j++){
				escreva(matriz[i][j])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 194; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */