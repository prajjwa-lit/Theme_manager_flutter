import 'package:flutter/material.dart';
import 'package:theme_manager/theme_manager.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeManager = ThemeProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Manager Example'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () => themeManager.toggleTheme(),
          ),
        ],
      ),
      body: Center(
        child: Text('Tap the icon to toggle theme'),
      ),
    );
  }
}
