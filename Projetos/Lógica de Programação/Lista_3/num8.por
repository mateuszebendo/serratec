programa
{
	//Leia uma matriz 5 x 5 e faça uma troca entre as diagonais superior e inferior. Escreva-a ao final.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[5][5], superior[5], inferior[5]

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++) mat[i][j] = u.sorteia(1,100)
		}
		
		inteiro u = 5
		para(inteiro i = 0; i < 5; i++){
			inteiro t = 5
			para(inteiro j = 0; j < 5; j++){
				se(i == j) superior[i] = mat[i][j]
				se(i + j == 4) inferior[j] = mat[i][j]	
			}
			
		}

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
				escreva("[" + i + "]" + "[" + j + "]:")
				escreva("  ", mat[i][j], "  ")
			}
			escreva("\n")
		}

		para(inteiro i = 0; i < 5; i++){
			inteiro t = 5
			para(inteiro j = 0; j < 5; j++){
				se(i == j) mat[i][j] = inferior[i]
				se(i + j == 4) mat[i][j] = superior[j]
			}
			
		}

		escreva("\n---------------------------------------------------\n")

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
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
 * @POSICAO-CURSOR = 944; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 7, 10, 3}-{superior, 7, 21, 8}-{inferior, 7, 34, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */