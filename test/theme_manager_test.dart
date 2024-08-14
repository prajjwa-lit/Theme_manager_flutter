import 'package:flutter_test/flutter_test.dart';
import 'package:app_theme_manager/theme_manager.dart';
void main() {
  test('ThemeManager toggles between light and dark themes', () {
    final themeManager = ThemeManager();
    expect(themeManager.isDarkMode, false);

    themeManager.toggleTheme();
    expect(themeManager.isDarkMode, true);

    themeManager.toggleTheme();
    expect(themeManager.isDarkMode, false);
  });

  // Add more tests as needed
}
