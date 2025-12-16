// lib/theme/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (Same in both themes)
  static const Color primaryStart = Color(0xFF667EEA);
  static const Color primaryEnd = Color(0xFF764BA2);
  static const Color primary = Color(0xFF6366F1);
  static const Color primaryDark = Color(0xFF4F46E5);
  static const Color primaryLight = Color(0xFF818CF8);
  static const Color secondary = Color(0xFF8B5CF6);

  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color errorLight = Color(0xFFFCA5A5);
  static const Color warning = Color(0xFFF59E0B);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryStart, primaryEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class DarkTheme {
  // Backgrounds
  static const Color background = Color(0xFF0F172A);
  static const Color surface = Color(0xFF1E293B);
  static const Color surfaceLight = Color(0xFF334155);

  // Text
  static const Color textPrimary = Color(0xFFF1F5F9);
  static const Color textSecondary = Color(0xFFCBD5E1);
  static const Color textMuted = Color(0xFF94A3B8);

  // Borders & Overlays
  static const Color border = Color(0xFF334155);
  static const Color overlayLight = Color(0x0DFFFFFF); // rgba(255,255,255,0.05)
  static const Color overlayMedium = Color(
    0x14FFFFFF,
  ); // rgba(255,255,255,0.08)
  static const Color overlayStrong = Color(
    0x26FFFFFF,
  ); // rgba(255,255,255,0.15)
  static const Color borderLight = Color(0x1AFFFFFF); // rgba(255,255,255,0.1)
  static const Color borderMedium = Color(0x33FFFFFF); // rgba(255,255,255,0.2)
  static const Color borderStrong = Color(0x4DFFFFFF); // rgba(255,255,255,0.3)
  static const Color modalOverlay = Color(0xCC000000); // rgba(0,0,0,0.8)
  static const Color primaryOverlay = Color(0x1A6366F1); // rgba(99,102,241,0.1)
  static const Color errorOverlay = Color(0x1AEF4444); // rgba(239,68,68,0.1)
  static const Color errorOverlayHover = Color(
    0x33EF4444,
  ); // rgba(239,68,68,0.2)
}

class LightTheme {
  // Backgrounds
  static const Color background = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceLight = Color(0xFFF1F5F9);

  // Text
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF475569);
  static const Color textMuted = Color(0xFF64748B);

  // Borders & Overlays
  static const Color border = Color(0xFFE2E8F0);
  static const Color overlayLight = Color(0x08000000); // rgba(0,0,0,0.03)
  static const Color overlayMedium = Color(0x0D000000); // rgba(0,0,0,0.05)
  static const Color overlayStrong = Color(0x1A000000); // rgba(0,0,0,0.1)
  static const Color borderLight = Color(0x14000000); // rgba(0,0,0,0.08)
  static const Color borderMedium = Color(0x1F000000); // rgba(0,0,0,0.12)
  static const Color borderStrong = Color(0x33000000); // rgba(0,0,0,0.2)
  static const Color modalOverlay = Color(0x80000000); // rgba(0,0,0,0.5)
  static const Color primaryOverlay = Color(
    0x146366F1,
  ); // rgba(99,102,241,0.08)
  static const Color errorOverlay = Color(0x14EF4444); // rgba(239,68,68,0.08)
  static const Color errorOverlayHover = Color(
    0x26EF4444,
  ); // rgba(239,68,68,0.15)
}
