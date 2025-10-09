/*
Este evento é Gerado toda vez que a instancia sai da tela
No nosso, quando uma instancia do objBola sai da tela
E como ela só pode sair porbaixo, temos certeza que o player perdeu
a bolinha, consequentemente uma das vidas 

Então, vamos configurar 4 coisas 
1°Diminuir vida em 1
2°Fazer a animação de mortye aonde a bolinha saiu
3°Apagar o código a bolinha que saiu (para evitar lags)
4°Criar uma nova bolinha caso ainda tenha vida
*/

//Primeiro, tiramos uma vida 
global.vidas--

//Segundo, criar uma animação de morte
//Criaremos um novo objeto chamado objMorte
//Criar novas instancias dentro do código