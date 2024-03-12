programa
{
	//Leia duas matrizes 10 x 10 e faça uma substituição entre a diagonal inferior da primeira coma diagonal superior da segunda.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat1[10][10], mat2[10][10]

		para(inteiro i = 0; i < 10; i++){
			para(inteiro j = 0; j < 10; j++){
				mat1[i][j] = u.sorteia(1, 100)
				mat2[i][j] = u.sorteia(1, 100)
			}
		}

		inteiro superior[10], inferior[10]

		para(inteiro i = 0; i < 10; i++){
			para(inteiro j = 0; j < 10; j++){
				se(i == j) superior[i] = mat2[i][j]
				se(i + j == 9) inferior[i] = mat1[i][j]
			}
		}

		para(inteiro i = 0; i < 10; i++){
			para(inteiro j = 0; j < 10; j++){
				se(i == j) mat1[i][j] = superior[i]
				se(i + j == 9)  mat2[i][j] = inferior[i]
			}
		}

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
				escreva("[" + i + "]" + "[" + j + "]:")
				escreva("  ", mat1[i][j], "  ")
			}
			escreva("\n")
		}

		escreva("\n---------------------------------------------------\n")

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
				escreva("[" + i + "]" + "[" + j + "]:")
				escreva("  ", mat2[i][j], "  ")
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
 * @POSICAO-CURSOR = 1182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat1, 7, 10, 4}-{mat2, 7, 24, 4}-{superior, 16, 10, 8}-{inferior, 16, 24, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */