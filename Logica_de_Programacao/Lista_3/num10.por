programa
{
	//Leia uma matriz 8x 8 e escreva o maior elemento da diagonal principal e a soma dos elementos da diagonal secundaria.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[8][8], soma = 0
		inteiro Maior = 0

		para(inteiro i = 0; i < 8; i++){
			para(inteiro j = 0; j < 8; j++) mat[i][j] = u.sorteia(1, 100)
		}
		
		para(inteiro i = 0; i < 8; i++){
			para(inteiro j = 0; j < 8; j++){
				se(i == j e mat[i][j] > Maior) Maior = mat[i][j]
				se(i + j == 7) soma += mat[i][j]
			}
		}

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
				escreva("[" + i + "]" + "[" + j + "]:")
				escreva("  ", mat[i][j], "  ")
			}
			escreva("\n")
		}

		escreva("Maior elemento da diagonal principal: ", Maior, "\nSoma dos elementos da diagonal secundária: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 706; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 7, 10, 3}-{soma, 7, 21, 4}-{Maior, 8, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */