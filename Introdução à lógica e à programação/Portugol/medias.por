// Programa cálculo de médias de um aluno
programa
{
	
	funcao inicio()
	{
		real nota1, nota2, nota3, nota4, media
		cadeia aluno

		// Receber nome do aluno
		escreva("Digite o nome do aluno: \n")
		leia(aluno)

		// Receber notas
		escreva("Digite a nota1: \n")
		leia(nota1)
		
		escreva("Digite a nota2: \n")
		leia(nota2)
		
		escreva("Digite a nota3: \n")
		leia(nota3)
		
		escreva("Digite a nota4: \n")
		leia(nota4)

		// Cálcular média
		media = (nota1 + nota2 + nota3 + nota4) / 4
		
		escreva("A media do aluno " + aluno + " é: " + media + "\n")

		// Verificar aprovação
		se (media < 7.0)
			escreva("O aluno " + aluno + " foi reprovado.\n")
		senao
			escreva("O aluno " + aluno + " foi aprovado.\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 584; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */