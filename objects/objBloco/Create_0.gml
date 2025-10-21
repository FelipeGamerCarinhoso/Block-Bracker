/*
Queremos criar a chance de nascer um bloco com bola 
Para isso, usaremos uma função para aleatorizar os números 
A chance de um bloco nascer com uma bola dentro será de 1 para 15 
Para aleatorizar usaremos a função irando_range()
Descrição:
function irandom_range(n1: Real, n2: Real) -> Real 
This function is similar to random_range() only with integer values as the 
input.
n1 The low end of the range from which the random number will be selected.
n2 The high end of the range from which the random number will be selected.
*/
tipoBloco = irandom_range(1, 15)

if tipoBloco == 15{
	//Trocar o sprite para um com a bola dentro
	sprite_index = sprBlocobola
}

//Variável global para contar a quantidade de blocos 
if ! variable_global_exists("quantBlocos"){
	global.quantBlocos = 1 
}
else{
	global.quantBlocos++
}