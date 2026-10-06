class Receita {
  const Receita({
    required this.titulo,
    required this.descricao,
    required this.ingredientes,
    required this.preparo,
  });

  final String titulo;
  final String descricao;
  final List<String> ingredientes;
  final List<String> preparo;
}

const categorias = ['Doces', 'Salgadas', 'Bebidas'];

// Cada lista corresponde a uma das três abas.
const receitas = [
  [
    Receita(
      titulo: 'Doce de abóbora',
      descricao: 'Abóbora cozida com açúcar e um toque de cravo.',
      ingredientes: [
        '1 kg de abóbora descascada e picada',
        '2 xícaras de açúcar',
        '½ xícara de água',
        '3 cravos-da-índia',
      ],
      preparo: [
        'Coloque todos os ingredientes em uma panela.',
        'Cozinhe em fogo baixo, mexendo de vez em quando, até a abóbora amolecer.',
        'Amasse a abóbora e continue cozinhando até o doce engrossar.',
        'Retire os cravos e deixe esfriar antes de servir.',
      ],
    ),
    Receita(
      titulo: 'Doce de leite',
      descricao: 'Doce cremoso feito com leite e açúcar.',
      ingredientes: ['1 litro de leite', '1 xícara de açúcar'],
      preparo: [
        'Misture o leite e o açúcar em uma panela grande.',
        'Cozinhe em fogo baixo, mexendo com frequência, por cerca de '
            '1 hora e meia, até ficar cremoso e dourado.',
        'Mexa constantemente quando começar a engrossar e desligue o fogo.',
        'Espere esfriar antes de servir.',
      ],
    ),
    Receita(
      titulo: 'Doce de banana',
      descricao: 'Bananas maduras transformadas em um doce de panela.',
      ingredientes: [
        '6 bananas maduras',
        '½ xícara de açúcar',
        '¼ de xícara de água',
      ],
      preparo: [
        'Descasque e amasse as bananas.',
        'Coloque as bananas, o açúcar e a água em uma panela.',
        'Cozinhe em fogo baixo, mexendo até escurecer e ficar cremoso.',
        'Desligue o fogo e deixe esfriar.',
      ],
    ),
  ],
  [
    Receita(
      titulo: 'Coxinha',
      descricao: 'Salgado crocante com recheio de frango desfiado.',
      ingredientes: [
        '2 xícaras de caldo de frango',
        '2 xícaras de farinha de trigo',
        '1 colher de sopa de manteiga',
        '1 xícara de frango cozido e desfiado',
        '½ cebola picada',
        '1 colher de sopa de óleo para refogar',
        'Sal e cheiro-verde a gosto',
        '1 ovo batido',
        'Farinha de rosca para empanar',
        'Óleo para fritar',
      ],
      preparo: [
        'Refogue a cebola no óleo e acrescente o frango, o sal e o cheiro-verde.',
        'Em outra panela, aqueça o caldo com a manteiga até ferver.',
        'Adicione a farinha de uma vez e mexa até a massa soltar da panela. '
            'Deixe amornar.',
        'Abra porções da massa, coloque o recheio e modele as coxinhas.',
        'Passe no ovo batido e na farinha de rosca.',
        'Frite em óleo quente até dourar e escorra em papel-toalha.',
      ],
    ),
    Receita(
      titulo: 'Pastel',
      descricao: 'Pastel de queijo com massa dourada e crocante.',
      ingredientes: [
        '6 discos de massa de pastel pronta',
        '150 g de queijo muçarela',
        'Óleo para fritar',
      ],
      preparo: [
        'Coloque uma porção de queijo no centro de cada disco de massa.',
        'Dobre a massa e feche bem as bordas com um garfo.',
        'Frite em óleo quente até dourar dos dois lados.',
        'Escorra em papel-toalha e sirva.',
      ],
    ),
    Receita(
      titulo: 'Pizza',
      descricao: 'Pizza de queijo e tomate para preparar em casa.',
      ingredientes: [
        '1 massa de pizza pronta',
        '½ xícara de molho de tomate',
        '200 g de queijo muçarela',
        '1 tomate fatiado',
        'Orégano a gosto',
      ],
      preparo: [
        'Preaqueça o forno a 200 °C e coloque a massa em uma assadeira.',
        'Espalhe o molho e distribua o queijo e as fatias de tomate.',
        'Polvilhe o orégano e asse conforme as instruções da massa, '
            'até o queijo derreter e as bordas dourarem.',
      ],
    ),
  ],
  [
    Receita(
      titulo: 'Café com leite',
      descricao: 'Café coado misturado com leite quentinho.',
      ingredientes: [
        '1 xícara de café coado',
        '1 xícara de leite',
        'Açúcar a gosto, se desejar',
      ],
      preparo: [
        'Aqueça o leite em uma panela.',
        'Misture o leite quente com o café coado.',
        'Adoce se desejar e sirva quente.',
      ],
    ),
    Receita(
      titulo: 'Suco de manga',
      descricao: 'Suco de manga madurinha, servido gelado.',
      ingredientes: [
        '1 manga madura',
        '2 xícaras de água gelada',
        'Açúcar a gosto, se desejar',
      ],
      preparo: [
        'Descasque a manga, retire o caroço e corte a polpa em pedaços.',
        'Bata a polpa com a água no liquidificador até ficar homogêneo.',
        'Adoce se desejar e sirva gelado.',
      ],
    ),
    Receita(
      titulo: 'Chá de camomila',
      descricao: 'Chá de flores de camomila com sabor suave.',
      ingredientes: [
        '1 colher de sopa de flores secas de camomila',
        '2 xícaras de água',
        'Açúcar a gosto, se desejar',
      ],
      preparo: [
        'Ferva a água e desligue o fogo.',
        'Adicione a camomila, tampe e deixe descansar por 5 minutos.',
        'Coe, adoce se desejar e sirva.',
      ],
    ),
  ],
];
