programa
{	
	//Leia uma matriz 6 x 6, conte e escreva quantos valores maiores que 10 ela possui.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[6][6]
		para(inteiro i = 0; i < 6; i++){
			para(inteiro j = 0; j < 6; j++){
				mat[i][j] = u.sorteia(1, 100)
			}
		}

		inteiro contador = 0
		para(inteiro i = 0; i < 6; i++){
			para(inteiro j = 0; j < 6; j++){
				se(mat[i][j] > 10) contador ++
			}
		}

		escreva("Essa matriz possui " + contador + " valores maiores que 10")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 501; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 7, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */