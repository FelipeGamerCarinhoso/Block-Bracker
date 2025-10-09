/*
Dentro do jogo, nós queremos que a cada vez que eu perder uma vida, mostre
para o usuário, em outros, poderiamos apenas mostrar a quantidade de vida
Mas para este jogo, queremos que mostre a quantidade de vida através de 
bolinhas cheias ou não
Ou seja, caso eu tenha 2 vidas, dentro do jogo, a segunda e a terceira 
bolinha devem aparecer apagadas
Mas como vamos saber qual bolinha apagar?
Teremos que usar um meio para identificar as bolinhas 
pelo ID, ficaria dificil, pois teriamos que mudar o ID manualmente
No caso, a primeira bolinha tem que receber no identificador 1
A segunda deve receberno identificador 1
A segunda deve receber 2 
E a terceira 3
Se fizermowws na variavel eterna isso nunca funcionaria
Pois todas teriam o mesmo ID
Então teriamos que criar uma maneira externa para criar variáveis 
E esta maneira, será através de uma variável global
Faremos isto, pois, teriamosacesso a um valor referente a quantidade de vida 
de qualquer instancia.

*/
if variable_global_exists("quantVidas"){
	global.quantVidas++
}
else{
	global.quantVidas = 1
}

identificador = global.quantVidas
