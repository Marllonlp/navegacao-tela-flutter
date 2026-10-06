import 'package:flutter/material.dart';

import 'receitas.dart';
import 'tela_informacoes.dart';
import 'tela_receita.dart';
import 'tema.dart';

void main() {
  runApp(const ReceitasFavoritasApp());
}

class ReceitasFavoritasApp extends StatelessWidget {
  const ReceitasFavoritasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas Favoritas',
      debugShowCheckedModeBanner: false,
      theme: temaDoApp,
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int _abaSelecionada = 0;
  final _icones = [
    Icons.icecream_outlined,
    Icons.lunch_dining_outlined,
    Icons.emoji_food_beverage_outlined,
  ];

  void _abrirInformacoes(String titulo, String descricao, String texto) {
    Navigator.pop(context); // Fecha o Drawer.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            TelaInformacoes(titulo: titulo, descricao: descricao, texto: texto),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Receitas Favoritas')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: cores.primaryContainer,
              padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
              child: Text(
                'Receitas Favoritas',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: cores.primary,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.tune_outlined, color: cores.primary),
              title: const Text('Configurações'),
              onTap: () => _abrirInformacoes(
                'Configurações',
                'Tudo organizado para facilitar a leitura das receitas.',
                'Idioma\nPortuguês (Brasil)\n\n'
                    'Medidas nas receitas\nXícaras e colheres\n\n'
                    'Organização\n3 receitas em cada categoria: '
                    'doces, salgadas e bebidas.',
              ),
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded, color: cores.primary),
              title: const Text('Sobre'),
              onTap: () => _abrirInformacoes(
                'Sobre',
                'Receitas simples, com aquele gostinho de casa.',
                'Receitas Favoritas é um pequeno caderno de comida caseira. '
                    'Aqui você encontra doces, salgados e bebidas, com os '
                    'ingredientes e o preparo explicados passo a passo.\n\n'
                    'Este aplicativo foi criado como atividade de estudo '
                    'para praticar a navegação entre telas no Flutter.',
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: ListView(
            key: PageStorageKey(_abaSelecionada),
            padding: const EdgeInsets.all(20),
            children: [
              for (final receita in receitas[_abaSelecionada])
                Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    leading: Icon(
                      _icones[_abaSelecionada],
                      color: cores.primary,
                    ),
                    title: Text(
                      receita.titulo,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        receita.descricao,
                        style: TextStyle(
                          color: cores.onSurfaceVariant,
                          height: 1.4,
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaReceita(receita: receita),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _abaSelecionada,
        onTap: (indice) => setState(() => _abaSelecionada = indice),
        items: [
          for (int i = 0; i < categorias.length; i++)
            BottomNavigationBarItem(
              icon: Icon(_icones[i]),
              label: categorias[i],
            ),
        ],
      ),
    );
  }
}
