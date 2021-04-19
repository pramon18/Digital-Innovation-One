// Programa para demonstrar a utilização
// da condicional "caso"
programa
{
	
	funcao inicio()
	{	
		inteiro opcao
		// Apresentar opções
		escreva("1 - Abrir Netflix\n")
		escreva("2 - Abrir Youtube\n")
		escreva("3 - Abrir Prime Video\n")
		escreva("4 - Abrir Hulu\n")
		escreva("5 - Abrir HBO+\n")
		escreva("6 - Abrir Disney+\n")
		escreva("0 - Sair\n")

		// Ler opção
		leia(opcao)

		// Realizar ação correspondente
		escolha (opcao){
			caso 1: {escreva("Abrindo Netflix\n") pare}
			caso 2: {escreva("Abrindo Youtube\n") pare}
			caso 3: {escreva("Abrindo Prime Video\n") pare}
			caso 4: {escreva("Abrindo Hulu\n") pare}
			caso 5: {escreva("Abrindo HBO+\n") pare}
			caso 6: {escreva("Abrindo Disney+\n") pare}
			caso 0: {escreva("Saindo...\n") pare}
			caso contrario: {escreva("Opção inválida") pare}
		}
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 821; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */