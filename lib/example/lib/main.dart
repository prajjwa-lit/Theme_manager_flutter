import 'package:app_theme_manager/example/lib/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_theme_manager/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeManager = ThemeManager();
  await themeManager.loadThemeFromPrefs();

  runApp(MyApp(themeManager));
}

class MyApp extends StatelessWidget {
  final ThemeManager themeManager;

  const MyApp(this.themeManager);

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeManager: themeManager,
      child: MaterialApp(
        theme: themeManager.themeData,
        home: HomeScreen(),
      ),
    );
  }
}
