programa
{
	const inteiro oito = 8 
	funcao inicio()
	{
	 	inteiro tabuleiro[7][7]
	 	logico tabuleiro_salvo[7][7]
	 	inteiro linha_inicial = 20 
	 	inteiro linha_final = 20 
	 	inteiro coluna_inicial = 20 
	 	inteiro coluna_final = 20
	 	logico verificador = falso

	 	escrever_na_tela(tabuleiro_salvo, tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final)
	 	
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
		
		
	  	escrever_na_tela(tabuleiro_salvo, tabuleiro, linha_inicial, linha_final, coluna_inicial, coluna_final)
		}
	}

	funcao escrever_na_tela (logico &tabuleiro_salvo[][], inteiro tabuleiro[][], inteiro coluna_inicial, inteiro coluna_final, inteiro linha_inicial, inteiro linha_final){
		inteiro numero_linha = 0 
		para(inteiro i = 0; i < oito; i++){
			escreva("\n ---------------------------------")
			escreva("\n")
			escreva("| " + numero_linha + " ")
			para(inteiro j = 0; j < oito; j++){
				se((coluna_inicial  == i e linha_inicial == j) ou verificacao(tabuleiro_salvo, linha_inicial, linha_final, coluna_inicial, coluna_final) == falso){
					escreva("|   ")
					j++
					salvar_estado(tabuleiro_salvo,linha_inicial, linha_final, coluna_inicial, coluna_final)
				}
				se((coluna_final == i e linha_final == j) ou verificacao(tabuleiro_salvo, linha_inicial, linha_final, coluna_inicial, coluna_final) == verdadeiro){
					escreva("| P ")
				}
				senao se(i < 2 ou i > 5) escreva("| P ")
				senao escreva("|   ")
		}
			se(i == 7) {
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

  	funcao salvar_estado(logico &tabuleiro_salvo[][], inteiro linha_inicial, inteiro linha_final, inteiro coluna_inicial, inteiro coluna_final){

		para(inteiro i = 0; i < oito; i++){
			para(inteiro j = 0; j < oito; j++){
				se(i < 2 ou i > 5) tabuleiro_salvo[j][i] = verdadeiro
				senao tabuleiro_salvo[j][i] = falso
			}
		}

		para(inteiro i = 0; i < oito; i++){
			para(inteiro j = 0; j < oito; j++){
				se(coluna_inicial  == i e linha_inicial == j){
					tabuleiro_salvo[j][i] = falso
				}
				se(coluna_final == i e linha_final == j){
					tabuleiro_salvo[j][i] = verdadeiro
				}
			}
		}
  	}

	funcao logico verificacao (logico tabuleiro_salvo[][], inteiro linha_inicial, inteiro linha_final, inteiro coluna_inicial, inteiro coluna_final){

		para(inteiro i = 0; i < oito; i++){
			para(inteiro j = 0; j < oito; j++){
				se((coluna_inicial  == i e linha_inicial == j) e tabuleiro_salvo[j][i] == verdadeiro){
					retorne verdadeiro
				}
				se((coluna_final == i e linha_final == j) e tabuleiro_salvo[j][i] == falso){
					retorne falso 
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
 * @POSICAO-CURSOR = 3093; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */