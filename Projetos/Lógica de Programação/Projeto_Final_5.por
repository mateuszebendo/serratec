programa
{
	inclua biblioteca Tipos
	inclua biblioteca Util
	
	funcao exibirMenu()
	{
		escreva("\n\nEscolha a opção desejada")
		escreva("\n1 - Cadastrar Alunos")
		escreva("\n2 - Escolha a turma para saber a média")
		escreva("\n3 - Situação do Aluno")
		escreva("\n4 - Lista geral dos alunos")
		escreva("\n5 - Editar Aluno Cadastrado")
		escreva("\n6 - Sair")
		escreva("\n\nEscolha uma opcao: ")
	}

	funcao cadastroAluno(cadeia listaAlunos[][])
	{
		inteiro linhas = Util.numero_linhas(listaAlunos)
		logico continua = verdadeiro
		inteiro lugar = 0
		enquanto(continua){
			para(inteiro i = 0; i < linhas; i++){
				se(listaAlunos[i][0] == "0"){
					lugar = i
					i = linhas
				}
			}
			cadeia nome, mes_nascimento,turma, nota1, nota2, nota3
			cadeia parar						
			escreva("Nome: ")
			leia(nome)
			enquanto(nome == "0"){
				escreva("Nome inválido\n")
				escreva("Digite um nome válido: ")
				leia(mes_nascimento)
			}
			
			escreva("Mês de nascimento: ")
			leia(mes_nascimento)
			enquanto(Tipos.cadeia_para_real(mes_nascimento) < 0 e Tipos.cadeia_para_real(mes_nascimento) > 12)
				{
					escreva("Valor inválido\n")
					escreva("Digite um mês válido: ")
					leia(mes_nascimento)
				}

			escreva("Digite a turma: ")
			leia(turma)

			escreva("Digite a primeira nota: ")
			leia(nota1)
				enquanto(Tipos.cadeia_para_real(nota1) < 0 ou Tipos.cadeia_para_real(nota1) > 10)
				{
					escreva("Valor inválido\n")
					escreva("Digite uma nota entre 0 e 10: ")
					leia(nota1)
				}

			escreva("Digite segunda nota: ")
			leia(nota2)
				enquanto(Tipos.cadeia_para_real(nota2) < 0 ou Tipos.cadeia_para_real(nota2) > 10)
				{
					escreva("Valor inválido\n")
					escreva("Digite uma nota entre 0 e 10: ")
					leia(nota2)
				}

			escreva("Digite a terceira nota: ")
			leia(nota3)
				enquanto(Tipos.cadeia_para_real(nota3) < 0 ou Tipos.cadeia_para_real(nota3) > 10)
				{
					escreva("Valor inválido\n")
					escreva("Digite uma nota entre 0 e 10: ")
					leia(nota3)
				}
			
			
			listaAlunos[lugar][0] = nome
			listaAlunos[lugar][1] = mes_nascimento
			listaAlunos[lugar][2] = turma
			listaAlunos[lugar][3] = nota1
			listaAlunos[lugar][4] = nota2
			listaAlunos[lugar][5] = nota3
			
			escreva("Deseja voltar ao MENU INICIAL? ")
			escreva("\nDigite Sim ou Não: ")
			leia(parar)
	
			se(parar == "SIM" ou parar == "sim")
				continua = falso
		}

	}

	funcao mediaTurma(cadeia listaAlunos[][])
	{		
		inteiro linhas = Util.numero_linhas(listaAlunos)
		limpa()
		cadeia nomeTurma
		real media_aluno = 0.0
		real media_turma
		inteiro contador = 0
		
		
		escreva("Qual nome da turma: ")
		leia(nomeTurma)
		
		para(inteiro i=0; i<linhas; i++)
		{
			se(listaAlunos[i][2] == nomeTurma)
			{
				media_aluno += (Tipos.cadeia_para_real(listaAlunos[i][3]) + Tipos.cadeia_para_real(listaAlunos[i][4]) + Tipos.cadeia_para_real(listaAlunos[i][5])) / 3
				contador++				
			}
		}

		media_turma = media_aluno / contador 

		se(contador == 0)
		{
			 escreva("Não foi encontrado essa turma")
		}

		senao{
				se(media_turma < 6)
				{
					escreva("A média da turma foi:" + media_turma + " e o rendimento foi Ruim") 
				}

				se(media_turma >= 6 e media_turma < 8)
				{
					escreva("A média da turma foi:" + media_turma + " e o rendimento foi Médio") 
				}

				se(media_turma >= 8 e media_turma < 10)
				{
					escreva("A média da turma foi:" + media_turma + " e o rendimento foi Bom") 
				}
				se(media_turma == 10)
				{
					escreva("A média da turma foi:" + media_turma + " e o rendimento foi Excelente") 
				}
				
			}
			
	}

	funcao situacaoAluno(cadeia listaAlunos[][], cadeia nomeAluno)
	{		
		inteiro linhas = Util.numero_linhas(listaAlunos)
		real media_aluno = 0.0
		inteiro contador = 0

		para(inteiro i=0; i<linhas; i++)
		{
			se(listaAlunos[i][0] == nomeAluno)
			{
				media_aluno += (Tipos.cadeia_para_real(listaAlunos[i][3]) + Tipos.cadeia_para_real(listaAlunos[i][4]) + Tipos.cadeia_para_real(listaAlunos[i][5])) / 3
				contador++
				pare				
			}
		}

		se(contador == 0)
		{
			 escreva("Não foi encontrado esse aluno")
		}

		senao{
				se(media_aluno < 6)
				{
					escreva("•A média do " + nomeAluno + " foi: " + media_aluno)
					escreva("\n•Situação: REPROVADO!")  
				}

				senao
				{
					escreva("•A média do " + nomeAluno + " foi: " + media_aluno)
					escreva("\n•Situação: APROVADO!") 
				}			
			}
			
	}

	funcao exibicaoAluno (cadeia listaAlunos[][])
	{
		
		inteiro linhas = Util.numero_linhas(listaAlunos)
		
		para(inteiro i = 0; i < linhas; i++)
		{
			se(Tipos.cadeia_para_real(listaAlunos[i][1]) != 0){
			 cadeia nomeAluno = listaAlunos[i][0]
                escreva("Aluno: " + listaAlunos[i][0])
      		 escreva("\n•Mês de nascimento: " + listaAlunos[i][1])
      		 escreva("\n•Turma: " + listaAlunos[i][2]) 
      		 escreva("\n•Nota 1: " + listaAlunos[i][3]) 
      		 escreva("\n•Nota 2: " + listaAlunos[i][4]) 
      		 escreva("\n•Nota 3: " + listaAlunos[i][5]) 
      		 escreva("\n")
			 situacaoAluno(listaAlunos,nomeAluno)
			 escreva("\n------------------------------------------\n")
			}
        }

	}

	funcao zerar (cadeia listaAlunos[][]){
		inteiro linhas = Util.numero_linhas(listaAlunos)
		inteiro coluna = Util.numero_colunas(listaAlunos)
		
		para(inteiro i = 0; i < linhas; i++){
			para(inteiro j = 0; j < coluna; j++) listaAlunos[i][j] = "0"
		}
	}

	//transformar os "se" em escolha caso
	funcao editarAluno (cadeia listaAlunos[][]){
		inteiro linhas = Util.numero_linhas(listaAlunos)
		logico continua = verdadeiro
		cadeia nomeAluno
		inteiro lugar = 0 
		enquanto(continua){
			escreva("Qual o nome do aluno que deseja editar: ")
			leia(nomeAluno)
				para(inteiro i = 0; i < linhas; i++){
					se(listaAlunos[i][0] == nomeAluno){
						lugar = i
						i = linhas
					}
				}
				cadeia parar
				inteiro dado = 0
				escreva("\n 1- Nome\n 2- Mês de Aniversário\n 3- Turma\n 4- Nota1\n 5- Nota2\n 6- Nota3\n")
				escreva("\nEscolha o dado que deseja alterar: ")
				leia(dado)
					enquanto(dado < 0 e dado > 6)
					{
						escreva("Valor inválido\n")
						escreva("\n 1- Nome\n 2- Mês de Aniversário\n 3- Turma\n 4- Nota1\n 5- Nota2\n 6- Nota3\n")
						escreva("\nEscolha o dado que deseja alterar: ")
						leia(dado)
					}
				dado--
				se(listaAlunos[lugar][0] == nomeAluno){
					limpa()
					se(dado == 0){
						escreva("Nome: ")
						leia(listaAlunos[lugar][0])
					}
					se(dado == 1){
						escreva("Mês de nascimento: ")
						leia(listaAlunos[lugar][1])
							enquanto(Tipos.cadeia_para_real(listaAlunos[lugar][1]) < 0 e Tipos.cadeia_para_real(listaAlunos[lugar][1]) > 12)
							{
						escreva("Valor inválido\n")
						escreva("Digite um mês válido: ")
						leia(listaAlunos[lugar][1])
							}
					}
					se(dado == 2){
						escreva("Digite a turma: ")
						leia(listaAlunos[lugar][2])
					}
					se(dado == 3){
						escreva("Digite a primeira nota: ")
						leia(listaAlunos[lugar][3])
							enquanto(Tipos.cadeia_para_real(listaAlunos[lugar][3]) < 0 ou Tipos.cadeia_para_real(listaAlunos[lugar][3]) > 10)
							{
							escreva("Valor inválido\n")
							escreva("Digite uma nota entre 0 e 10: ")
							leia(listaAlunos[lugar][3])
							}
					}
					se(dado == 4){
						escreva("Digite a segunda nota: ")
						leia(listaAlunos[lugar][4])
							enquanto(Tipos.cadeia_para_real(listaAlunos[lugar][4]) < 0 ou Tipos.cadeia_para_real(listaAlunos[lugar][4]) > 10)
							{
							escreva("Valor inválido\n")
							escreva("Digite uma nota entre 0 e 10: ")
							leia(listaAlunos[lugar][4])
							}
					}
	
					se(dado == 5){
						escreva("Digite a terceira nota: ")
						leia(listaAlunos[lugar][5])
							enquanto(Tipos.cadeia_para_real(listaAlunos[lugar][5]) < 0 ou Tipos.cadeia_para_real(listaAlunos[lugar][5]) > 10)
							{
							escreva("Valor inválido\n")
							escreva("Digite uma nota entre 0 e 10: ")
							leia(listaAlunos[lugar][5])
							}
					}
					escreva("Dado editado com sucesso!")
				}
				senao se(listaAlunos[lugar][0] == "0"){
					enquanto(listaAlunos[lugar][0] == "0")
					{
						escreva("Aluno não encontrado!\n")
						escreva("Escolha um nome existente!")
						leia(listaAlunos[lugar][0])
					}
				}
				
				escreva("\nDeseja voltar ao MENU INICIAL? ")
				escreva("\nDigite Sim ou Não: ")
				leia(parar)
				
				se(parar == "SIM" ou parar == "sim") continua = falso
		}
	}
	
	funcao inicio()
	{
		const inteiro LIN = 10, COL = 6
		inteiro opcao
		cadeia lista[LIN][COL]
		logico fimPrograma = falso
		cadeia nomeAluno

		zerar(lista)

		enquanto(nao fimPrograma)
		{
			faca{
				exibirMenu()
				leia(opcao)
			}enquanto(opcao < 1 ou opcao > 6)

			escolha(opcao)
			{
				caso 1://Cadastro
					limpa()
					cadastroAluno(lista)
					pare
					
				caso 2://Busca a turma e mostra a média 
					limpa()
					mediaTurma(lista)
					pare
				
				caso 3://Situação do aluno
					limpa()
					escreva("Qual o nome do Aluno: ")
					leia(nomeAluno)
					limpa()
					situacaoAluno(lista,nomeAluno)					
					pare

				caso 4://Editar
					limpa()
					exibicaoAluno(lista)
					pare

				caso 5:
					limpa()
					editarAluno(lista)
					pare
				caso 6:
					fimPrograma = verdadeiro
				pare
				
			}		
		}
		
	}
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 683; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */