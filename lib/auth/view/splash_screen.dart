import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? DarkTheme.background : LightTheme.background,

      body: _buildBodyContents(isDark),
    );
  }

  Widget _buildBodyContents(bool isDark) {
    return Center(
      child: Column(
        children: [
          Text(
            AppConstants.appName,
            style: TextStyle(
              color: isDark ? DarkTheme.textPrimary : LightTheme.textPrimary,
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
