import 'package:flutter/material.dart';

// Sobre e Configurações usam o mesmo layout, com textos diferentes.
class TelaInformacoes extends StatelessWidget {
  const TelaInformacoes({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.texto,
  });

  final String titulo;
  final String descricao;
  final String texto;

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: ListView(
            padding: const EdgeInsets.all(24),
            children: [
              Text(
                descricao,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: cores.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              Text(texto, style: const TextStyle(fontSize: 16, height: 1.6)),
            ],
          ),
        ),
      ),
    );
  }
}
