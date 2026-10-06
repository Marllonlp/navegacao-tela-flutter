# Receitas Favoritas — Receitas de casa

Atividade de navegação em Flutter. Três abas (Doces, Salgadas e Bebidas),
com três Cards cada. Um toque abre os ingredientes e o modo de preparo;
o botão “Voltar para a tela principal”, a seta ou o botão do dispositivo
retorna à mesma aba.

O Drawer abre Configurações e Sobre, com textos informativos.

O visual usa vermelho, fundo claro e cartões simples, sem banners ou setas nos cartões.
As cores e os estilos ficam em `lib/tema.dart` para facilitar alterações.

- `lib/main.dart`: tela principal, abas e Drawer.
- `lib/receitas.dart`: dados das nove receitas.
- `lib/tela_receita.dart`: tela de detalhes.
- `lib/tela_informacoes.dart`: layout das páginas Configurações e Sobre.
- `lib/tema.dart`: tema visual do aplicativo.

Para executar:

```bash
flutter pub get
flutter run
```
