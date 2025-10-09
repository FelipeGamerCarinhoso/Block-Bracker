/*
Agora é só configurar para mostar se a quantidade de vida sobrando 
através dos sprites
Para isto, vamos usar o identificador como exemplo 
nós sabemos que quando a 3 vidas, terá 2 bolinhas acesas
Quando eu tenho 2 vidas, terá 1 bolinha 
E quando eu tenho 1 vida, não terá bolinha acesa
Ou seja, toda vez que a quantidade de vida é maior do que a quantidade 
de bolinhas acesas
E para saber qual bolinha deve acender ou não, é só comparar a quantidade
de vida ao idetificador
Ou seja , caso o jogador tenha 3 vidas, as vidas 1 e 2, ficarão acesas
já a vida 3, ficará apagada
Sendo assim, teremos certeza de que, todas as vezes que o identificador for maior
ou igual a quantidade de vidas, a bolinha ficará apagada
se o identificador for menor, ficará aceso
*/
if identificador >= global.vidas{
	sprite_index = sprVidaUsada
}
else{
	
	sprite_index = sprBola
}