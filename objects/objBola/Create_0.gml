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
x = objPlayer.x
y = objPlayer.y - 10
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
isStart = false // futuramente, esta deve ser uma variavel global


