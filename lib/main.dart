import 'package:flutter/material.dart';

import 'receitas.dart';
import 'tela_receita.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: const Color(0xFFF1F8E9),
      ),
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
  final _icones = [Icons.cake, Icons.restaurant, Icons.local_cafe];

  void _abrirInformacoes(String titulo, String texto) {
    Navigator.pop(context); // Fecha o Drawer.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text(titulo)),
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              texto,
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Receitas Favoritas')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFC8E6C9)),
              child: Text(
                'Sabores do interior',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () => _abrirInformacoes(
                'Configurações',
                'Idioma: Português\n'
                    'Medidas: xícaras e colheres\n'
                    'Receitas: 3 por categoria',
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Sobre'),
              onTap: () => _abrirInformacoes(
                'Sobre',
                'Sabores do interior\n\n'
                    'Um caderno de receitas inspirado na comida caseira: '
                    'doces de panela, lanches simples e bebidas para acompanhar.\n\n'
                    'Atividade de navegação em Flutter.',
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        key: PageStorageKey(_abaSelecionada),
        padding: const EdgeInsets.all(16),
        children: [
          for (final receita in receitas[_abaSelecionada])
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: CircleAvatar(
                  backgroundColor: const Color(0xFFC8E6C9),
                  child: Icon(
                    _icones[_abaSelecionada],
                    color: Colors.green.shade800,
                  ),
                ),
                title: Text(receita.titulo),
                subtitle: Text(receita.descricao),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _abaSelecionada,
        selectedItemColor: Colors.green.shade800,
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
