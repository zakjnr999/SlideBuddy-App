import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:studdybuddy/auth/view/splash_screen.dart';
import 'package:studdybuddy/core/theme/app_theme.dart';
import 'package:studdybuddy/core/theme/theme_provider.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: const SlideBuddy(),
    ),
  );
}

class SlideBuddy extends StatelessWidget {
  const SlideBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return ScreenUtilInit(
          designSize: const Size(393, 852),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              title: AppConstants.appName,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: themeProvider.themeMode,
              home: const SplashScreen(),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
