import 'package:flutter/material.dart';

import 'receitas.dart';

class TelaReceita extends StatelessWidget {
  const TelaReceita({super.key, required this.receita});

  final Receita receita;

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

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
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  receita.titulo,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: cores.primary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  receita.descricao,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: cores.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Ingredientes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                for (final ingrediente in receita.ingredientes)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      '• $ingrediente',
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ),
                const SizedBox(height: 24),
                const Text(
                  'Modo de preparo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                for (int i = 0; i < receita.preparo.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      '${i + 1}. ${receita.preparo[i]}',
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
