/*
Explicação dos alarmes:
Os alarmes possuem algumas propriedades 
1º: Os alarmes são parecidos com vetores, ou seja, o primeiro alarme 
|Fica na posição 0, e o último fica na quatidade de vetores menos um
Sabendo disso e também sabendo que temos 12 vetores, qual é a posição
do ultimo alarme? É 11

2ºAo passar o valor um vetor (exp: alarme[0] = 10,) ele ira
diminuir  em 1 cada frame

3ºO alarm, assim que chega a 0, irá rodar um código dentro dele 
porexemplo, se você colocar dentro de um alarm para ele criar 
Um inimigo e colocar dentro de um alarm para ele criar 
Um inimigo e colocar para ele receber  10, quer dizer que a cada 10 frames 
ele ira criar um novo inimigo
Então, sabendo que cada segundo possui 60 frames 
colocamos um alarm para receber 60 vezes a quantidade de segundos
Que cada segundo que você calcular, ele irá rodaro código 
Queremos que assim que criar uma instancia do objMorte
Queremos que ela seja destruida em 2 segundos 
qual sintax usaremos para fazer isto
*/
//qual é a outra forma?
//alarm[0] = 120

//forma simples
alarm[0] = 2 * 60