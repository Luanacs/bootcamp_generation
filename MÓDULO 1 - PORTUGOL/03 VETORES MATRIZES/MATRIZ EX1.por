programa
{
	/*Crie um programa que receba valores do usuário para preencher uma matriz 3X3, e
	em seguida, exiba a soma dos valores dela e a soma dos valores da primeira
	diagonal, ou seja, diagonal principal.*/
	
	funcao inicio()
	{
		real matriz[3][3], soma=0.0, somaDiag=0.0
		inteiro linha,coluna
		
		para (linha=0; linha<3;linha++)
		{
			para(coluna=0;coluna<3;coluna++)
			{
				escreva("\nDigite o valor da célula: ",linha+1,",",coluna+1," : ")
				leia(matriz[linha][coluna])

				soma=soma+matriz[linha][coluna]

				se(linha==coluna)
				{ 
					somaDiag=somaDiag+matriz[linha][coluna]				
				}
			}
		}
		
		escreva("\nA soma dos valores da matriz 3x3 é: ", soma)
		escreva("\nA soma dos valores da diagonal principal da matriz 3x3 é: ", somaDiag)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */