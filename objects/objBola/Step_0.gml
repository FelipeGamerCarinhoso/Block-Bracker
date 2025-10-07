/*
Primeiro, no inicio do jogo, a bola vai acompanhar o player
Por enquanto, vamos apenas checar se as direções são iguais a zero
Se sim, vamos seguir o player
*/
/* Jeito "errado" de verificar o incio do jogo
if direcaoHorizontal == 0 and direcaoVertical == 0{
	x = objPlayer.x
}
*/
/*E para começar o jogo, vamos adcionar a tecla W ou seta para cima
Mas, temos que fazer uma validação para isto, então vamos criar uma
- variavel
*/

// Jeito "certo"
//Então caso o jogo não esteja iniciado, iremos seguir o player
//E esperar a tecla para cima ser apertada
if !global.isStart{
	x = objPlayer.x
	y = objPlayer.y - 10
	direcaoVertical = 0
	direcaoHorizontal = 0
	if keyboard_check(vk_up) or keyboard_check(ord("W")){
		//Assim que apertado, inciamos o jogo
		global.isStart = true
		direcaoVertical = -1
		
		/*
			Vamos calcular se estamos na esquerda ou na direita da sala
			A partir do meio da mesma
			Para calcular o meio, pegamos a largura da sala e dividimos
			Por dois, ou seja, calculamos a metade
			Se eu estiver antes da metade(o meu x é menor que a metade -
			- da sala) estou na esquerda, portanto a bola irá para direita
			Se eu estiver no meio ou depois da metade da largura (meu x-
			- é igual ou maior que a metade da largura), estou na direita
			- portanto a bola irá para esquerda
		*/
		
		if x < room_width / 2{
			direcaoHorizontal = 1
		}
		else{
			direcaoHorizontal = -1
		}
	}
}
//Se começou o jogo
else{
	/*
		Primeiro, vamos criar as rebitadas da bola
		Para isto, iremos usaremos novamente a função place_meeting()
		Só que desta vez, verificando se há colisão das paredes ou -
		- com o player
		Então, dependendo de onde a bola bater, ela irá na direção -
		- oposta
		Ou seja, se bater na esquerda no objColisao, ela vai
		- para direita
		Se bater na direita no objColisao, ela vai para esquerda
		Se bater encima, vai para baixo
		E por fim, se ela estiver indo para baixo e colidir com -
		- o player, ela voltá a subir
		Explicação da função place_meeting: objBola.create linha 18
	*/
	
	//Com o objColisao
	//Verificar a colisão na esquerda
	if place_meeting(x - velocidade,y,objColisao){
		direcaoHorizontal = 1
	}
	//Verificar a colisão na direita
	if place_meeting(x + velocidade, y, objColisao){
		direcaoHorizontal = - 1
	}
	
	//Verificar colisão acima
	if place_meeting(x, y - velocidade, objColisao){
		direcaoVertical = 1
	}
	
	//Com o objPlayer
	if place_meeting(x, y + velocidade, objPlayer){
		direcaoVertical = -1
	}
	
	//Começo da destruição dos blocos
	/*
	Nós queremos que, toda vez que eu acerta um bloco
	Iremos mandar a bolinha para outro lado e destruiremos -
	- o bloco que acertamos
	Mas como até agora nós apenas verificamos com o -
	- "tipo", não importava com qual  instancia eu fiz colisão
	Só que agora, queremos destruir uma instancia espefica
	Para isto, nós temos que, verificar se aconteceu uma colisão
	E se aconteceu, vamos pegar a identificação daquela instancia -
	- e destrui-la
	Para isto, usaremos a função instance_place()
	Descrição da função:
	function instance_place(x: Real, y: Real, obj:-
	Id. TileMapElement OR Asset. GMObject OR -
	- Constant.All OR Array) -> Id. Instance
	With this function you can check a position for a collision- 
	- with another instance or all instances of an object-
	using the collision mask of the instance that runs the code -
	-for the check.
	X The x position to check for instances.
	Y The y position to check for instances.
	obj The object to check for instances of.
	
	Tradução:
	Função instace_place(z: valor real, y: valor real, obj: Id. do 
	elemento do TileMap ou uma imagem do Asset. ou um Objeto, constante -
	- todos os objetos ou um vetor de objetos) retorno é o ID da instancia
	Com esta função, você consegue checar uma posição para um colisão com outra instancia -
	ou todas as instancias de um objeto usando a marcará de colisão de uma instancia -
	- desta compilação do código para checar
	X A posição x para checar a instancia
	Y A posição y para checar a instancia
	obj O objeto para checar a instancia dele 
	
	Agora que sabemos usar tanto o place_meeting() quanto o instace_place(), agora vamois programar
	a colisão com o objBloco, de dependendo de onde colidirmos, iremo spara a direção oposta
	*/
	
	//Primeiro, checar onde aconteceu a colisão
	//Colisão a esquerda
	if place_meeting(x - velocidade, y, objBloco){
		//Agora que sabemos que ouve uma colisão, iremos pegar o ID da instancia que colidimos	
		//Vamos criar uma váriável e usar ela como referencia
		blocoColidido = instance_place(x - velocidade, y, objBloco)
		
		/*
		Agora que sabemos qual é o bloco, iremos destrui-lo, para isto, usaremos a função
		instace_destroy()
		Descrição:
		function instance_destroy([id: Asset.GMObject OR Id. Instance OR Constant.All],-
		- [execute_event_flag: Bool]) -> Undefined
		You call this function whenever you wish to destroy an instance, -
		- normally triggering a Destroy Event and also a Clean Up Event.
		id The instance ID or object_index to destroy (optional, default is the calling instance)
		execute_event_flag	Set to true or false to perform the destroy event or -
		- not (optional, default is true)
		
		Tradução:
		Função instance_destroy([id: Objeto or Id do objeto ou Constante todos os objetos], -
		- [execute_event_flag: valor booleano]) retorno vazio ou indefinido
		Você chama esta função quado desejar destruir uma instancia, normalmente resulta um evento de
		Destruição e também um ebento de Limpeza
		id O ID da instancia ou o index do objeto para destuir (opcional, pois o padrão é destuir a -
		- instancia que chamou a função)
		execute_event_flag Configura para verdadeiro ou falso para performar o evento de destruição -
		- ou não (opcional, pois o padrão é verdadeiro)
		
		Ou seja, por isto não colocamos para destuir o objBloco direto, pois deste jeito,  iriamos -
		- destruir todas as instancia do objBloco, agora, passando para ele a variável blocoCOlidido
		destuiremos apenas este bloco
		
		)
		*/
		instance_destroy(blocoColidido)
		
		//E agora invertemos a direção
		//Como estavamos na esquerda, agora irá para direita
		direcaoHorizontal = 1
	}
	
	//Colisão na direita
	if place_meeting(x + velocidade,y, objBloco){
		blocoColidido =  instance_place(x + velocidade, y, objBloco)
		instance_destroy(blocoColidido)
		direcaoHorizontal = - 1
	}
	
	//Colisão encima
	if place_meeting(x, y - velocidade, objBloco){
		blocoColidido = instance_place(x, y - velocidade, objBloco)
		instance_destroy(blocoColidido)
		direcaoVertical = 1
	}
	
	//Colisão embaixo
	if place_meeting(x, y + velocidade, objBloco){
		blocoColidido = instance_place(x, y + velocidade, objBloco)
		instance_destroy(blocoColidido)
		direcaoVertical = -1
	}
	
	//Lembrando que o padrão está seguindo os dizeres na colisão a esquerda 
}
//No fim soma as direções em suas respectivas variáveis vezes
//a velocidade

x += direcaoHorizontal * velocidade
y += direcaoVertical * velocidade