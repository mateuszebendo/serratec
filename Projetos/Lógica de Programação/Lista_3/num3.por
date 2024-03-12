programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat1[4][4], mat2[4][4]
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				mat1[i][j] = u.sorteia(1, 100)
			}
		}
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j < 4; j++){
				mat2[i][j] = u.sorteia(1, 100)
			}
		}

		inteiro mat3[2][2]
		para(inteiro t = 0; t < 2; t++){
			para(inteiro u = 0; u < 2; u++){
				para(inteiro i = 0; i <  4; i++){
					para(inteiro j = 0; j < 4; j++){
						se(mat1[i][j] > mat2[i][j] e mat1[i][j] > mat3[t][u]){
							mat3[t][u] = mat1[i][j]
							mat1[i][j] = 0
						}
						senao se(mat2[i][j] > mat1[i][j] e mat2[i][j] > mat3[t][u]){
							mat3[t][u] = mat2[i][j]
							mat2[i][j] = 0
						}
					}
				}
			}
		}

		escreva("\nMATRIZ 3:")
		para(inteiro i = 0; i < 2; i++){
			para(inteiro j = 0; j < 2; j++){
				escreva("\n[" + i + "]" + "[" + j + "]: ")
				escreva(mat3[i][j])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 739; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat1, 6, 10, 4}-{mat2, 6, 22, 4}-{mat3, 18, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */