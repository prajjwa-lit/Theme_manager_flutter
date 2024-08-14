import 'package:flutter/material.dart';
import 'theme_manager.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeManager themeManager;

  const ThemeProvider({
    Key? key,
    required this.themeManager,
    required Widget child,
  }) : super(key: key, child: child);

  static ThemeManager of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ThemeProvider>())!.themeManager;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
