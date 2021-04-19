programa
{
	
	funcao inicio()
	{
		real janeiro, fevereiro, marco, abril, media
		cadeia vendedor

		escreva("Digite o nome do vendedor: \n")
		leia(vendedor)
		
		escreva("Digite valor das vendas em janeiro \n")
		leia(janeiro)
		
		escreva("Digite valor das vendas em fevereiro \n")
		leia(fevereiro)
		
		escreva("Digite valor das vendas em marco \n")
		leia(marco)
		
		escreva("Digite valor das vendas em abril \n")
		leia(abril)

		media = (janeiro + fevereiro + marco + abril) / 4

		escreva("Média de vendas do vendedor " + vendedor + " foi: " + media + "\n")
		
		se (media > 5000)
			escreva("Bônus para o vendedor " + vendedor + " é de 10%.\n")
		senao se (media > 3000)
			escreva("Bônus para o vendedor " + vendedor + " é de 5%.\n")
		senao
			escreva("Bônus para o vendedor " + vendedor + " é de 3%.\n")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */