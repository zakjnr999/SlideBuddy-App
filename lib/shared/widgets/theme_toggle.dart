import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/core/theme/theme_provider.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = themeProvider.isDarkMode;
    return Container(
      decoration: BoxDecoration(
        color: isDark ? DarkTheme.overlayMedium : LightTheme.overlayMedium,
        border: Border.all(
          color: isDark ? DarkTheme.borderLight : LightTheme.borderLight,
        ),
        borderRadius: BorderRadius.circular(AppConstants.radiusS),
      ),
      child: IconButton(
        icon: Icon(
          isDark ? Icons.light_mode : Icons.dark_mode,
          color: isDark ? DarkTheme.textPrimary : LightTheme.textPrimary,
        ),
        onPressed: () => themeProvider.toggleTheme(),
        tooltip: 'Toggle theme',
      ),
    );
  }
}
