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
/*
x: Real,
y: Real,
layer_id: String OR Id. Layer,
obj: Asset.GMObject,
[var_struct: Struct]
) -> Id. Instancer
With thisfunction you can create a new instance of the specified
- object at any given point within the room and on the layer  specifield
X The x position 
Y the y position the object will be create at 
layer_id The layer ID (or name) to assing the create instance to 
obj The object index of the object to create an instance of 
var_struct A structure that constains variables that are
- copied into the new instance before the Create Event is Called
Toda vez que quisermos criar uma instancia , usaremos essa função
quando a bolinha sair, vamos criar a instancia objMorte 
onde a bolinha saiu.
*/
instance_create_layer(x, room_height, "instances", ObjMorte)
/*
Agora que testamos e que funcionou, temos que apagar a explosão depois
de um tempo

Para criar algo depois de um tempo, iremos usar o evento de alarm 
A explicação esterá no evento de criação do objMorte

como deu certo, então o segundo passo é está completo
*/

/*
Agora vamos fazer o 3 passo: Destruir a bolinha que saiu
Isto ja sabemos, basta usar o instance_destroy()
*/

instance_destroy()

/*
E o último passo, recriar a bolinha encima do player
*/
instance_create_layer(objPlayer.x, objPlayer.y - 10,"instances", objBola)
isStart = false