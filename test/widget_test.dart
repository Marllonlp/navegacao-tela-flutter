import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:receitas_favoritas/main.dart';
import 'package:receitas_favoritas/receitas.dart';

void main() {
  testWidgets('as três abas abrem receitas e voltam à categoria de origem', (
    tester,
  ) async {
    await tester.pumpWidget(const ReceitasFavoritasApp());

    for (int i = 0; i < categorias.length; i++) {
      await tester.tap(find.text(categorias[i]));
      await tester.pumpAndSettle();
      expect(find.byType(Card), findsNWidgets(3));

      await tester.tap(find.text(receitas[i].first.titulo));
      await tester.pumpAndSettle();
      expect(find.text(receitas[i].first.descricao), findsOneWidget);
      expect(find.text('Ingredientes'), findsOneWidget);
      expect(find.text('Modo de preparo'), findsOneWidget);

      await tester.tap(find.text('Voltar para a tela principal'));
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<BottomNavigationBar>(find.byType(BottomNavigationBar))
            .currentIndex,
        i,
      );
    }

    await tester.tap(find.text(receitas[2].first.titulo));
    await tester.pumpAndSettle();
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text(receitas[2].first.titulo), findsOneWidget);
  });

  testWidgets('as telas do Drawer voltam à aba selecionada', (tester) async {
    await tester.pumpWidget(const ReceitasFavoritasApp());
    await tester.tap(find.text('Bebidas'));
    await tester.pumpAndSettle();

    for (final titulo in ['Configurações', 'Sobre']) {
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.text(titulo));
      await tester.pumpAndSettle();
      expect(find.byType(BackButton), findsOneWidget);

      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      expect(find.text('Café com leite'), findsOneWidget);
    }
  });
}
