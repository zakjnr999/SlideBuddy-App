import 'package:flutter/material.dart';
import 'package:studdybuddy/auth/model/splash_screen.dart';

void main() {
  runApp(const SlideBuddy());
}

class SlideBuddy extends StatelessWidget {
  const SlideBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const SplashScreen());
  }
}
