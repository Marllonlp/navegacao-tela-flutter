import 'package:flutter/material.dart';

import 'receitas.dart';

class TelaReceita extends StatelessWidget {
  const TelaReceita({super.key, required this.receita});

  final Receita receita;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes da receita')),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Voltar para a tela principal'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(receita.titulo, style: const TextStyle(fontSize: 26)),
            const SizedBox(height: 12),
            Text(receita.descricao),
            const SizedBox(height: 24),
            const Text(
              'Ingredientes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (final ingrediente in receita.ingredientes)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('• $ingrediente'),
              ),
            const SizedBox(height: 24),
            const Text(
              'Modo de preparo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (int i = 0; i < receita.preparo.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text('${i + 1}. ${receita.preparo[i]}'),
              ),
          ],
        ),
      ),
    );
  }
}
