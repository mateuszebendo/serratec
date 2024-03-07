programa
{
	const inteiro oito = 8 
	funcao inicio()
	{
	 	inteiro tabuleiro[7][7]
	 	inteiro l, c

	  	escrever_na_tela(tabuleiro)
		
	}

	funcao escrever_na_tela (inteiro tabuleiro[][]){
		para(inteiro i = 0; i < oito; i++){
			escreva("\n ---------------------------------")
			escreva("\n")
			para(inteiro j = 0; j < oito; j++){
				se(i < 2 ou i > 5){
					se(j == 7){
						escreva("| P |")
					}
					senao{
						escreva("| P ")
					}
				}
				senao{ 
					se(j == 7){
						escreva("|   |")
					}
					senao{
						escreva("|   ")
					}
				}
				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @DOBRAMENTO-CODIGO = [12];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */