programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro tabuleiro[3][3]
		inteiro vencedor = 0
		inteiro jogador = 0

		setar_tabuleiro(tabuleiro)

		enquanto(nao(vencedor == 1 ou vencedor == 2)){
			jogada(tabuleiro, jogador)
			vencedor = ganhador(tabuleiro)
			jogador++
		}

		escreva("\nVitória do jogador: ", vencedor)
	}

	funcao setar_tabuleiro(inteiro &tabuleiro[][]){
		para(inteiro i = 0; i < 3; i++){
			para(inteiro j=0; j<3; j++) tabuleiro[i][j] = 0
		}

		inteiro numero_linha = 0
		para(inteiro i = 0; i < 3; i++){
			escreva("\n")
			escreva(" " + numero_linha+ " |")
			para(inteiro j=0; j<3; j++){
				escreva("   |")
			}
			escreva("\n")
			numero_linha++
			}
		escreva("\n ------------------")
		escreva("\n")
		escreva("   |")
		para(inteiro k = 0; k < 3; k++){
			escreva(" " + k+ " |")
				}
		}
		
	

	funcao jogada (inteiro &tabuleiro[][], inteiro jogador){
		inteiro linha, coluna
		escreva("\n")
		escreva("\nDigite a linha onde deseja jogar: ")
		leia(linha)
		
		escreva("\nDigite a coluna onde deseja jogar: ")
		leia(coluna)

		se(jogador%2 == 0){
			tabuleiro[linha][coluna] = 2
		}
		senao {
			tabuleiro[linha][coluna] = 1
		}

		
		inteiro numero_linha = 0
		para(inteiro i = 0; i < 3; i++){
			escreva("\n")
			escreva(" " + numero_linha+ " |")
			para(inteiro j=0; j<3; j++){
				se(tabuleiro[i][j] == 0) escreva("   |")
				senao se(tabuleiro[i][j] == 1) escreva(" O |")
				senao se(tabuleiro[i][j] == 2) escreva(" X |")
			}
			escreva("\n")
			numero_linha++
			}
		escreva("\n ------------------")
		escreva("\n")
		escreva("   |")
		para(inteiro k = 0; k < 3; k++){
			escreva(" " + k+ " |")
				}
				
			}
			

	funcao inteiro ganhador (inteiro &tabuleiro[][]){
		para(inteiro i = 0; i < 3; i++){
			se(tabuleiro[i][0] != 0 e i == 0){
				se((tabuleiro[i][0] == tabuleiro[i][1]) e (tabuleiro[i][1] == tabuleiro[i][2])){
					retorne tabuleiro[i][1]
				}
			}
			para(inteiro j=0; j<3; j++){
				se(tabuleiro[i][j] != 0 e j == 0){
					se((tabuleiro[1][j] == tabuleiro[0][j]) e (tabuleiro[1][j] == tabuleiro[2][j])) retorne tabuleiro[1][j]
				}
		}
	}
		se((tabuleiro[0][0] == tabuleiro[1][1]) e (tabuleiro[1][1] == tabuleiro[2][2])) retorne tabuleiro[1][1]
		senao retorne 0
}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tabuleiro, 6, 10, 9}-{vencedor, 7, 10, 8}-{jogador, 8, 10, 7}-{tabuleiro, 21, 33, 9}-{i, 22, 15, 1}-{j, 23, 16, 1}-{numero_linha, 26, 10, 12}-{i, 27, 15, 1}-{j, 30, 16, 1}-{k, 39, 15, 1}-{linha, 47, 10, 5}-{coluna, 47, 17, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */