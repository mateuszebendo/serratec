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

	funcao escrever_na_tela (inteiro &tabuleiro[][], inteiro linha_inicial, inteiro linha_final, inteiro coluna_inicial, inteiro coluna_final){
		inteiro numero_linha = 0
		inteiro peca = 0
		se(linha_inicial > linha_final){
			peca = tabuleiro[linha_inicial][coluna_inicial]
			tabuleiro[linha_inicial][coluna_inicial] = 0
			para(inteiro i = 0; i < oito; i++){
			escreva("\n ---------------------------------")
			escreva("\n")
			escreva("| " + numero_linha + " ")
			para(inteiro j = 0; j < oito; j++){
				 se(linha_final == i e coluna_final == j){
					tabuleiro[i][j] = peca
					mover_peca(tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final, peca)	
				}
				senao se(tabuleiro[i][j] == 0) escreva("|   ")
				senao se(tabuleiro[i][j] == 1) escreva("| ♙ ")
				senao se(tabuleiro[i][j] == 2) escreva("| ♗ ")		
				senao se(tabuleiro[i][j] == 3) escreva("| ♘")
				senao se(tabuleiro[i][j] == 4) escreva("| ♖ ")
				senao se(tabuleiro[i][j] == 5) escreva("| ♕ ")
				senao se(tabuleiro[i][j] == 6) escreva("| ♔ ")
		}
			se(i== 7) {
				escreva("\n ---------------------------------")
				escreva("\n")
				escreva("|   ")
				para(inteiro k = 0; k < oito; k++){
					escreva("| " + k + " ")
				}
			}
			escreva("|")
			numero_linha++
			
	 }
			
		}
		senao{
		para(inteiro i = 0; i < oito; i++){
			escreva("\n ---------------------------------")
			escreva("\n")
			escreva("| " + numero_linha + " ")
			para(inteiro j = 0; j < oito; j++){
				se(linha_inicial == i e coluna_inicial == j){
					peca = tabuleiro[i][j]
					tabuleiro[i][j] = 0
					escreva("|   ")
				}
				senao se(linha_final == i e coluna_final == j){
					tabuleiro[i][j] = peca
					mover_peca(tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final, peca)	
				}
				senao se(tabuleiro[i][j] == 0) escreva("|   ")
				senao se(tabuleiro[i][j] == 1) escreva("| ♙ ")
				senao se(tabuleiro[i][j] == 2) escreva("| ♗ ")		
				senao se(tabuleiro[i][j] == 3) escreva("| ♘")
				senao se(tabuleiro[i][j] == 4) escreva("| ♖ ")
				senao se(tabuleiro[i][j] == 5) escreva("| ♕ ")
				senao se(tabuleiro[i][j] == 6) escreva("| ♔ ")
		}
			se(i== 7) {
				escreva("\n ---------------------------------")
				escreva("\n")
				escreva("|   ")
				para(inteiro k = 0; k < oito; k++){
					escreva("| " + k + " ")
				}
			}
			escreva("|")
			numero_linha++
			
	 }
		 
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

	funcao mover_peca(inteiro tabuleiro[][], inteiro linha_inicial, inteiro linha_final, inteiro coluna_inicial, inteiro coluna_final, inteiro peca){
				inteiro movimento_vertical = linha_final - linha_inicial
				inteiro movimento_horizontal = coluna_final - coluna_inicial 
				se(peca == 1){
					se(((movimento_vertical < 3 e movimento_vertical > 0) ou (movimento_vertical < 0 e movimento_vertical > -3) e movimento_horizontal == 0)) escreva("| ♙ ")
					senao movimento_invalido(tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final, peca)
					
				}
				se(peca == 2){
					se((movimento_vertical == movimento_horizontal) ou (movimento_vertical == -movimento_horizontal) ou (-movimento_vertical == movimento_horizontal))
					escreva("| ♗ ")	
					senao escreva("| X ")	
				}
				se(peca == 3){
					se((movimento_vertical == 3 ou movimento_vertical == -3 ou movimento_vertical == 1 ou movimento_vertical == -1) e (movimento_horizontal == 3 ou movimento_horizontal == -3 ou movimento_horizontal == 1 ou movimento_horizontal == -1)) 
					escreva("| ♘ ")
					senao escreva("| X ")
				}
				se(peca == 4){
					se((movimento_vertical != 0 e movimento_horizontal == 0) ou  (movimento_vertical == 0 e movimento_horizontal != 0))
					escreva("| ♖ ")
					senao escreva("| X ")
				}
				se(peca == 5){
					se((movimento_vertical != 0 e movimento_horizontal == 0) ou (movimento_vertical == 0 e movimento_horizontal != 0) ou (movimento_vertical == movimento_horizontal))
					escreva("| ♕ ")
					senao escreva("| X ")
				}
				se(peca == 6){
					se((movimento_vertical == 1 ou movimento_horizontal == 1) ou (movimento_vertical == movimento_horizontal) ou (movimento_vertical == -1 ou movimento_horizontal == -1)) 
					escreva("| ♔ ")
					senao escreva("| X ")
				}
	}

	funcao movimento_invalido(inteiro &tabuleiro[][], inteiro linha_inicial, inteiro linha_final, inteiro coluna_inicial, inteiro coluna_final, inteiro peca){
	 	tabuleiro[linha_final][coluna_final] = 0
	 	tabuleiro[linha_inicial][coluna_inicial] = peca

		linha_inicial = 20
		linha_final = 20
		coluna_inicial = 20
		coluna_final = 20
	 	
		escreva("\n ---------------------------------")
		escreva(" \nMOVIMENTO INVÁLIDO ")
		escreva("\n ---------------------------------")	
		escreva("\n")
		escrever_na_tela(tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final)
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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5075; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */