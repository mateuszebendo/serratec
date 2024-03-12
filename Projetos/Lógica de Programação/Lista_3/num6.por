programa
{
	//Leia uma matriz 4 x 4 e troque os valores da 1ª.linha pelos da 4ª.coluna, vice-e-versa. Escrever ao final a matriz obtida
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[4][4]

		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j ++) mat[i][j] = u.sorteia(1, 100)
		}

		inteiro trocada[4][4]
		inteiro u = 3
		para(inteiro i = 0; i < 4; i++){
			inteiro t = 0
			para(inteiro j = 0; j < 4; j ++){
				trocada[t][u] = mat[i][j]
				t++
			}
			u--
		}


		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j ++){
				escreva("[" + i + "]" + "[" + j + "]: ")
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}

		escreva("\n")
		
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j ++){
				escreva("[" + i + "]" + "[" + j + "]: ")
				escreva(trocada[i][j], " ")
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
 * @POSICAO-CURSOR = 489; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */