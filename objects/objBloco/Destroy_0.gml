//Ao destruir o bloco ele irá somar os pontos
global.pontos+= 10

/*
ja somamos, mas, ainda não mostramos a quantidade de pontos na tela
Para mostrar, iremos criar o obj Pontos
*/

/*
Quando o obj for destruido, iremos checar qual é o tipo dele 

Caso o tipo seja 15, quer dizer que é um bloco é um bloco com a bola dentro
Quando for destruido, e o tipo dele for 15, iremos criar uma bola
*/
global.quantBlocos--

if tipoBloco == 15{
	instance_create_layer(x, y, "instances", objBola)
}