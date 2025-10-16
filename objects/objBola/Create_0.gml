/*
Vamos começar criando  as variáveis de direção e de velocidade da bola
*/
// VAmos iniciar a variavel velocidade recebendo 3
velocidade = 3

//E agora vamos definir  as direções, ambas iniciando zeradas
direcaoVertical = 0
direcaoHorizontal = 0

/*
//E também temos que iniciar com a bola no meiodo player, como podemos fazer?
Sujestões: Seguir o player, mas como? Pegando a posição do player
Então o x da bola, tem que ser o x do player para ficar no meio do player
Lembrando que ao usar "." você está se referindo a uma propriedade/função da variavel/objPlayer
E o y da bola deve ser apenas alguns pixels acima do y do playe
*/

//Aqui esta o motivo da bola iniciar lá em baixo com o Player, ou seja, ou
//Começamos um novo obj para identificar que é umaa bola criada pelo bloco
//
//x = objPlayer.x
//y = objPlayer.y - 10
/*
Só que tem um problema, sabem qual? Toda vez que a bolinha for criada ela vai aparecer no meio do player, só que, nem toda bola é criada 
Sujestões:
Quando a bola está na plataforma, ok, mas estamos resolvendo exatamente isso
Pelos pontos, ok, mas e quando o player perde uma vida, não necessariamente perde pontos -
-apesar de iniciar no centro da barra, emtão não podemos usar esse método
Podemos criar um objeto separado para bolas que proveem de blocos, ok Podmos usar este- 
-método
Apesar da bola iniciar no lugar certo, ela não segue o player, para seguir Teremos que usar-
-opura função no step
*/
//global.isStart = false // futuramente, esta deve ser uma variavel global

/*Futuramente fariamos a variavel sendo global?
É por isso, nós vamos verificar se o jogo inicio ou não
E ele vai começar não iniciado, e depois ir para cima do player 
E quando não estiver, vai iniciar com uma direção aleatória 

E verificar se a variável global ja existe 
e se não existe, cria a variavel 
*/
 if ! variable_global_exists("isStart"){
	 global.isStart = false
 }
 else{
	 //caso exista, iremos aleatoriezar a direção para aonde a bola vai
	 
	 direcaoHorizontal = irandom_range(0, 1)
	 direcaoVertical = irandom_range(0, 1)
	 
	 //0 representa a chance de ir para esquerda ou para cima
	 
	 if direcaoHorizontal == 0{
	     direcaoHorizontal= -1
	 }
	 
	 if direcaoVertical == 0{
		 direcaoVertical= -1
	 }
}

//Processo de criação da quantidade de bolas 
if ! variable_global_exists("quantBolas"){
	global.quantBolas = 1
}
else{
	global.quantBolas++
}