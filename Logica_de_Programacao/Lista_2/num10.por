programa
{
	
	funcao inicio()
	{
		inteiro idade
		real faixa1 = 0.0
		real faixa2 = 0.0
		real faixa3 = 0.0
		real faixa4 = 0.0
		real faixa5 = 0.0
		
		para(inteiro i = 0; i < 15; i ++){
			escreva("Digite a idade da ", i + 1, "º pessoa: ")
			leia(idade)

			se(idade >= 15) faixa1++
			se(idade >= 16 e idade <= 30) faixa2++
			se(idade >= 31 e idade <= 45) faixa3++
			se(idade >= 46 e idade <= 60) faixa4++
			se(idade >= 61) faixa5++
		}

		escreva("Até 15 anos: ", faixa1, "\nDe 16 a 30 anos: ", faixa2, "\nDe 31 a 45 anos: ", faixa3, "\nDe 46 a 60 anos: ", faixa4, "\nAcima de 61 anos: ", faixa5)
		real porcentagem
		porcentagem = (faixa5+faixa1)*100/(faixa1+faixa2+faixa3+faixa4+faixa5)
		escreva("\nPorcentagem de pessoas na primeira e última faixa etária: ", porcentagem)	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */