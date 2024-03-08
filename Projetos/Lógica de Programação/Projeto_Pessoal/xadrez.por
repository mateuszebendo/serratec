programa
{
	/*a ideia agora é fazer uma matriz composta por estados logicos, que é verdadeira me lugares que cpossuem peças e falsas onde não possui. sempre que uma peça for movida, o estado do tabuleiro mudaria e afetaria a impressão do proximo tabuleiro*/
	const inteiro oito = 8 
	funcao inicio()
	{
	 	inteiro tabuleiro[8][8]
	 	inteiro linha_inicial = 20 
	 	inteiro linha_final = 20 
	 	inteiro coluna_inicial = 20 
	 	inteiro coluna_final = 20
	 	logico verificador = falso

		setar_tabuleiro(tabuleiro)
	 	escrever_na_tela(tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final)
	 	
		enquanto(verificador == falso){
		escreva("\n")
		escreva("\nDigite a linha da peça que deseja mover se encontra: ")
		leia(linha_inicial)
		
		escreva("\nDigite a coluna da peça que deseja mover se encontra: ")
		leia(coluna_inicial)
		
		
		escreva("\nDigite a linha para que deseja move-la: ")
		leia(linha_final)
		
		escreva("\nDigite a coluna para que deseja move-la: ")
		leia(coluna_final)
		
		
	  	escrever_na_tela(tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final)
		}
	}

	funcao escrever_na_tela (inteiro &tabuleiro[][], inteiro coluna_inicial, inteiro coluna_final, inteiro linha_inicial, inteiro linha_final){
		inteiro numero_linha = 0 
		inteiro peca = 0
		para(inteiro i = 0; i < oito; i++){
			escreva("\n ---------------------------------")
			escreva("\n")
			escreva("| " + numero_linha + " ")
			para(inteiro j = 0; j < oito; j++){
				se(tabuleiro[i][j] == 0) escreva("|   ")
				se(tabuleiro[i][j] == 1) escreva("| P ")
				se(tabuleiro[i][j] == 2) escreva("| B ")		
				se(tabuleiro[i][j] == 3) escreva("| C ")
				se(tabuleiro[i][j] == 4) escreva("| T ")
				se(tabuleiro[i][j] == 5) escreva("| R ")
				se(tabuleiro[i][j] == 6) escreva("| K ")
				senao se(coluna_inicial == j e linha_inicial == i){
					peca = tabuleiro[linha_inicial][coluna_inicial]
					tabuleiro[linha_inicial][coluna_inicial] = 0
					escreva("|   ")
				}
				senao se(coluna_final == j e linha_final == i){
					tabuleiro[linha_final][coluna_final] = peca
					mover_peca(peca)
				}
		}
			se(i== 7) {
				escreva("\n ---------------------------------")
				escreva("\n")
				escreva("|   ")
				para(inteiro k = 0; k < oito; k++){
					escreva("| " + k + " ")
				}
			}
			numero_linha++
	 }
	  
  }


	/* 1 Peão, 2 Bispo, 3 Cavalo, 4 Torre, 5 Rainha, 6 Rei*/
	funcao setar_tabuleiro(inteiro &tabuleiro[][]){
		para(inteiro i = 0; i < oito; i++){
			para(inteiro j = 0; j < oito; j++){
				se(((i == 0 e j == 0) ou (i == 0 e j == 7)) ou ((i == 7 e j == 0) ou (i == 7 e j == 7))) tabuleiro[i][j] = 4
				senao se(((i == 0 e j == 1) ou (i == 0 e j == 6)) ou ((i == 7 e j == 1) ou (i == 7 e j == 6)))  tabuleiro[i][j] = 2		
				senao se(((i == 0 e j == 2) ou (i == 0 e j == 5)) ou ((i == 7 e j == 2) ou (i == 7 e j == 5)))  tabuleiro[i][j] = 3	
				senao se((i == 0 e j == 3) ou (i == 7 e j == 3) ) tabuleiro[i][j] = 5	
				senao se((i == 0 e j == 4)  ou (i == 7 e j == 4)) tabuleiro[i][j] = 6
				senao se(i==1 ou i==6) tabuleiro[i][j] = 1
				senao tabuleiro[i][j] = 0
				}
		}
	}

	funcao mover_peca(inteiro peca){
				se(peca == 1) escreva("| P ")
				se(peca == 2) escreva("| B ")		
				se(peca == 3) escreva("| C ")
				se(peca == 4) escreva("| T ")
				se(peca == 5) escreva("| R ")
				se(peca == 6) escreva("| K ")
	}

  
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1975; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */