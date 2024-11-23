# KanyeRestFlutter

# About the project

Ao clicar no botão mensagem kanye do dia ele retorna uma mensagem "filosofica" e controversa do artista Kanye West, com o intuito de utlizar widgets simples do Flutter



<img src="https://github.com/WesleyOliveir4/assets/blob/main/main/KanyeRest/Screenshot_20241123_124236.png" width="200" height="400">


# Widgets utilizados 

## 1. MaterialApp
Motivo:
É o widget principal que configura o aplicativo para usar os recursos do Material Design, como AppBar, Cards, e Botões.
Função:
Define a raiz do aplicativo, gerencia o tema e a navegação, e remove o banner de debug com debugShowCheckedModeBanner: false.
## 2. Scaffold
Motivo:
É um layout padrão do Material Design, usado para estruturar a tela do aplicativo.
Função:
Fornece áreas como:
appBar para o título e cor de fundo.
body para o conteúdo principal.
## 3. AppBar
Motivo:
Exibe um título na parte superior da tela.
Função:
Define um título fixo ("KanyeRest") e usa o atributo backgroundColor para personalizar a cor.
## 4. Center
Motivo:
Garante que o conteúdo principal fique centralizado na tela.
Função:
Centraliza o widget Column horizontal e verticalmente.
## 5. Padding
Motivo:
Adiciona espaço ao redor dos widgets para melhorar o espaçamento e layout.
Função:
Usado com EdgeInsets.all(16.0) para fornecer um espaçamento uniforme em torno do conteúdo.
## 6. Column
Motivo:
Organiza os widgets (imagem, texto e botão) verticalmente em uma pilha.
Função:
Usa propriedades como:
mainAxisSize: MainAxisSize.min para que o Column ocupe apenas o espaço necessário.
Espaçamento vertical com SizedBox.
## 7. Image.asset
Motivo:
Exibe a imagem de Kanye West carregada dos assets.
Função:
Renderiza a imagem localizada em assets/kanye_img.png com uma altura fixa de 150 pixels.
## 8. Card
Motivo:
Aplica um contêiner estilizado com bordas elevadas e arredondadas ao redor do texto da citação.
Função:
Exibe a citação em um layout limpo e bem organizado.
Usa elevation para criar sombra e profundidade.
shape define bordas arredondadas.
## 9. Text
Motivo:
Renderiza texto na tela.
Função:
Mostra a citação no Card, centralizando o texto com textAlign: TextAlign.center.
Define o tamanho da fonte com style: TextStyle(fontSize: 16).
## 10. SizedBox
Motivo:
Adiciona espaçamento fixo entre os widgets.
Função:
Insere 20 pixels de espaço vertical entre a imagem, o cartão e o botão.
## 11. ElevatedButton
Motivo:
Cria um botão estilizado e responsivo.
Função:
Aplica uma ação ao ser clicado com o atributo onPressed.
Personaliza a cor, forma e padding com style: ElevatedButton.styleFrom.
## 12. StatefulWidget
Motivo:
Permite alterar dinamicamente o estado do widget (a frase da citação).
Função:
O widget pode atualizar o conteúdo da tela quando o botão é pressionado, graças à função setState.
## 13. Random
Motivo:
Gera números aleatórios para selecionar uma frase da lista.
Função:
Escolhe uma citação aleatória da lista _kanyeQuotes.
