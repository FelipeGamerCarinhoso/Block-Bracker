/*
toda vez que a quantidade de blocos chegar a zero, começaremos a criar os blocos
Como criaremos mais de 1, teremos que usar um laço de repetição 

Lembrando que laços de repetição, executam uma tarefa até comprir uma certa condição, ou descumpri-la
no nosso caso, usaremos o while, que funciona quando a condição dentro dele é verdadeira]

Nesse caso, usaremos dois laços, uma para cada linha, e dentro do laço das linhas, um para cada coluna
E as nossas condição vão ser, enquanto a variável de conta for menor que a quantidade de linhas/blocos
e quando tivermos certeza que tudo foi criado corretamente, faremos eles entrarem descendo da tela
*/

if global.quantBlocos == 0{
global.blocoAlturaCerta = false
	i= 0
	
	while  i < linhas{
		j = 1
	
		while j < colunas{
		
			/*Criar uma instancia do objBloco, o que faremos de diferente, é que criaremos a posição
			Horizontal do bloco, a partir da multiplicação da posição por J 
			Pois assim, a cada inicialização do laço, o bloco se moverá para depois do último bloco 
			multiplicaremos 64 por j
			*/
			
			//A altura do bloco vai ser -64 multiplicado pelo i. O primeiro bloco começa na altura 0, o
			//segundo na altura -64 e o terceiro na altura -128 e assim por diante
			instance_create_layer(64 * j, -64 * i, "Instances", objBloco)
		
			//No final de cada laço, aumentaremos o valorde j em 1
			j++
			//almenta a quantidade de blocos 
			quantBlocos++
		 }
		 //Aumentar o valor de i
		 i++
    }
}