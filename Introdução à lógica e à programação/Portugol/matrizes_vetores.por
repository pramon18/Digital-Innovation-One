// Exemplo com matrizes e vetores
programa
{
	
	funcao inicio()
	{
		inteiro linha = 0, coluna = 0
		cadeia vetor[5]
		cadeia matriz[5][3]

		cadeia frutas[4]
		
		frutas[0] = "Maçã"
		frutas[1] = "Pera"
		frutas[2] = "Uva"
		frutas[3] = "Melão"

		enquanto (linha < 4){
			escreva(frutas[linha] + "\n")
			linha++
		}			

		cadeia cesta[][] = {{"Maçã", "100"}, {"Pera", "200"}, {"Melão", "300"}}
		linha = 0
		enquanto (linha < 3){		
			escreva("Fruta: " + cesta[linha][0] + " Quantidade: " + cesta[linha][1] + "\n")
			linha ++
		}

		// Atividade extra
		cadeia info[][] = {{"João", "São Paulo", "(11)9999-5241"},
					    {"Maria", "Ribeirão Preto", "(16)9999-8596"},
					    {"Ana", "Manaus", "(92)9999-8574"}}
		linha = 0
		enquanto (linha < 3){		
			escreva("Nome: " + info[linha][0] + " Cidade: " + info[linha][1] + " Telefone: " + info[linha][2] + "\n")
			linha ++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 862; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {frutas, 11, 9, 6}-{cesta, 23, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */