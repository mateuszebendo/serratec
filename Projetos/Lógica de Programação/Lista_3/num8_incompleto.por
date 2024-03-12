programa
{
	//Leia uma matriz 5 x 5 e faça uma troca entre as diagonais superior e inferior. Escreva-a ao final.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[5][5], trocada[5][5]

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++) mat[i][j] = u.sorteia(1,100)
		}

		para(inteiro i = 0; i < 5; i++){
			para(inteiro j = 0; j < 5; j++){
				se(i == j) trocada[i][j]
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 7, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */