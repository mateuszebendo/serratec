programa
{
	//Leia uma matriz 50 x 2, onde cada coluna corresponde a um lado de um triangulo retângulo. Declare um vetor que contenha a área dos respectivos triângulos e o escreva.
	//Para encontrar a área de um triângulo retângulo, basta dividir por 2 o resultado da multiplicação da base (b) pela altura (h)
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[50][2]

		para(inteiro i = 0; i < 50; i++){
			para(inteiro j = 0; j < 2; j++) mat[i][j] = u.sorteia(1, 200)
		}

		inteiro area[50], aux = 0
		para(inteiro i = 0; i < 50; i++){
			para(inteiro j = 0; j < 2; j++){
				se(j == 0) aux = mat[i][j]
				senao area[i] = (aux*mat[i][j])/2
			}
			escreva("\nÁrea do " + (i+1) + "º triângulo: " + area[i] + "cm²")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 8, 10, 3}-{area, 14, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */