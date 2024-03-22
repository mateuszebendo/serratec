programa
{
	//Leia uma matriz 20 x 20. Leia também um valor X. O programa deverá fazer uma busca desse valor na matriz e, ao final escrever a localização (linha e coluna) ou uma mensagem de “não encontrado”.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[20][20]

		para(inteiro i = 0; i < 20; i++){
			para(inteiro j = 0; j < 20; j++){
				mat[i][j] = u.sorteia(1, 100)
			}
		}

		inteiro x = u.sorteia(1, 100)
		inteiro v = 0
		para(inteiro i = 0; i < 20; i++){
			para(inteiro j = 0; j < 20; j++){
				se(mat[i][j] == x){
					escreva("\nO número X = " + x + " está na posição [" + i + "][" + j + "]")
					v = 1
					pare
				}
			}
		}
		se(v == 0) escreva("Não encontrado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 417; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 7, 10, 3}-{x, 15, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */