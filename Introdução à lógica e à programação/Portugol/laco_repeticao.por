// Calcular tabuada de um número
programa
{
	
	funcao inicio()
	{
		inteiro contador, limite, tabuada
		contador=0

		// Receber número da tabuada
		escreva("Digite o valor da tabuada\n")
		leia(tabuada)

		// Receber limite
		escreva("Digite o valor do limite\n")
		leia(limite)
		
		// Mostrar tabuada
		faca {
			escreva ("Tabuada: " + tabuada + " X " + contador + " = " + tabuada*contador + "\n")
			contador++
		} enquanto (contador < limite)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */