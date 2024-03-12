programa
{
	//Leia uma matriz 8 x 8 e a transforme numa matriz triangular inferior , atribuindo zero a todos os elementos acima da diagonal principal, escrevendo-a ao final.
	//Matriz triangular inferior: ocorre quando todos os termos que estão acima da diagonal principal são iguais a zero e os termos que estão abaixo da diagonal principal são números reais.
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[8][8]

		para(inteiro i = 0; i < 8; i++){
			para(inteiro j = 0; j < 8; j++) mat[i][j] = u.sorteia(1, 100)
		}
		inteiro v = 1
		para(inteiro i = 0; i < 8; i++){
			para(inteiro j = 0; j < 8; j++){
				se(v == 0) mat[i][j] = 0
				senao se(i == j) v = 0
			}
			v = 1
		}
		para(inteiro i = 0; i < 8; i++){
			para(inteiro j = 0; j < 8; j++){
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
 * @POSICAO-CURSOR = 884; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */