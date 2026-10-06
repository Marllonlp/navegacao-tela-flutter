import 'package:flutter/material.dart';

// O tema reúne as cores e os estilos usados em todas as telas.
final temaDoApp = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.red).copyWith(
    primary: Colors.red.shade700,
    onPrimary: Colors.white,
    primaryContainer: Colors.red.shade50,
    onPrimaryContainer: Colors.red.shade900,
    surface: Colors.white,
    onSurface: Colors.black87,
    onSurfaceVariant: Colors.black54,
    outlineVariant: Colors.grey.shade300,
  ),
  scaffoldBackgroundColor: const Color(0xFFF5F5F5),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFD32F2F),
    foregroundColor: Colors.white,
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: false,
  ),
  drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
  cardTheme: CardThemeData(
    color: Colors.white,
    elevation: 0,
    margin: const EdgeInsets.only(bottom: 12),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Color(0xFFD32F2F),
    unselectedItemColor: Colors.grey,
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
    type: BottomNavigationBarType.fixed,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFD32F2F),
      foregroundColor: Colors.white,
      elevation: 0,
      minimumSize: const Size.fromHeight(48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
);
