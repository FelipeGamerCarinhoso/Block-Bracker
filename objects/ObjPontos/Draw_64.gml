/*
Por enquanto,não importa usarmos o Draw ou o Draw Gui, pois no
nosso jogo, não possui câmera.

Para mostrar os pontos vamos usar uma função e aproveitaremos e aprenderemos
sobre padronização de nomes de função w como ela funciona no game maker 

Quando formos criar uma função, ha um certo padrão a ser seguido, este padrão
é a primeira palavra sendo um verbo, e depois a segunda palavra estando 
com a primeira letra maiuscula, e complementando o verbo
Por Exemplo:
Se eu fosse criar uma função para quebrar blocos eu criaria quebrarBloco()
Se eu quiser checar a colisão entre dois objts, seria o checarColisão()
Se eu quiser iniciar o jogo, ou seja, lançar a bola, usaria o lançarBola()
Se eu quiser inverter a direção da bola, eu criaria o redirecionarBola()

No Game Maker  as funções são parecidas, a diferença é que são em inglês
Então, por exemplo, nós queremos mostrar o text na tela, podemos dizer que queremos
desenhar um texto na tela.
desenho: Draw
Texto: text
Ou seja, muito provavelmente , existe uma função, você pode tentar achar ela 
pelo nome em Ingles, ou usando o nome em inglês, ou usando o nomo do que você 
fazer de referencia 
*********Outra padronização do código, é quando você quiser alterar um valor 
         a função  terá "set" no nome, é quando você quiser alterar um valor 
		 Provavelmente terá "get" ou "is" no nome
Então vamos ver a drscrição do draw_text():
function draw_text(x: Real, string: Any) -> Underfild
With this function you can draw any  string at any position within the room 
(for drawning real numbers you real number you should use the string() function to convert
them into text).
X The x coordinate of the drawn string.
Y the y coordinate of the drawn string.
string The string to draw.

O interessante, é que a própria função, já indica do que fazer caso o seu texto use números
use números, que é o nosso caso, então vamos ver a descrição dela:
Descrição:
function string(val_or_format: Any, [. . .: Any*]) -> String 
With this function you can turn any value into a string or a format string.
. . . Valous to replace the placeholders with.

Então como colocarmos os pontos para semem mostrados, temos que traduzilos
para string e mostra-los, e para deixar um pouco mais dinâmico, criaremos uma 
mensagem para isso

Bom, mas o texto esta pequeno, vamos ter que usar um outro método/função
Uma mentira  seria usando o draw_text_transformed(), mas ele fica  fora do lugar e
pixelizado, então vamos criar uma fonte por lá, controlar o desenho e o 
tamanho do texto


*/
if global.pontos < 10{
	mensagem = "0000" + string(global.pontos)
}
else if global.pontos < 100{
	mensagem = "000" + string(global.pontos)
}
else if global.pontos < 1000{
	mensagem = "00" + string(global.pontos)
}
else if global.pontos < 10000{
	mensagem = "0" + string(global.pontos)
}
else{
	mensagem = string(global.pontos) 
}
draw_set_font(fntPontos)
	
mensagem = string(global.pontos)

//E agora desenhamos na tela
draw_text(x,y,mensagem)
