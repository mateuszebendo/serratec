programa
{
	// Leia uma matriz 6 x 6 e atribuir o valor 0 para os valores negativos encontrados fora das diagonais principal e secundaria.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[6][6]

		para(inteiro i = 0; i < 6; i++){
			para(inteiro j =0 ; j < 6; j++) mat[i][j] = u.sorteia(-100, 100)
		}

		para(inteiro i = 0; i < 6; i++){
			para(inteiro j = 0; j < 6; j++){
				escreva("[" + i + "]" + "[" + j + "]:")
				escreva("  ", mat[i][j], "  ")
			}
			escreva("\n")
		}

		para(inteiro i = 0; i < 6; i++){
			para(inteiro j = 0; j < 6; j++){
				se((i == j ou i + j == 5) e mat[i][j] < 0) mat[i][j] = 0
			}
		}

		escreva("\n---------------------------------------------------\n")

		para(inteiro i = 0; i < 6; i++){
			para(inteiro j = 0; j < 6; j++){
				escreva("[" + i + "]" + "[" + j + "]:")
				escreva("  ", mat[i][j], "  ")
			}
			escreva("\n")
		    }
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 709; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */