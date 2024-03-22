programa
{
	
	funcao inicio()
	{
		real compra = 0.0
		real valor 
		real i = 0.0

		escreva("Digite o valor da compra: ")
		leia(compra)

		se(compra >= 500){
			valor = compra - 400
			enquanto(i<25){
				 valor = valor - 100 
				 i++
				 se(valor == 0) pare
			}
		}
		valor = compra-compra*(i/100)
		escreva("Valor da compra: ", compra, "\nDesconto: ", i, "%",  "\nValor final: ", valor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 293; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */