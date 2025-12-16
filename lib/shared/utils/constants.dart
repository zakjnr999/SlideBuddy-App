// lib/constants/app_constants.dart
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstants {
  // Text Strings
  static const String appName = "SlideBuddy";

  /// Display text sizes (headings)
  static double get displayLarge => 32.sp; // Main hero title
  static double get displayMedium => 24.sp; // Section headers
  static double get displaySmall => 20.sp; // Card titles
  /// Body text sizes
  static double get bodyLarge => 16.sp; // Primary body text
  static double get bodyMedium => 14.sp; // Secondary text
  static double get bodySmall => 12.sp; // Captions, hints
  /// Button text sizes
  static double get buttonLarge => 16.sp; // Primary buttons
  static double get buttonMedium => 14.sp; // Secondary buttons
  static double get buttonSmall => 12.sp; // Small action buttons
  /// Label text sizes
  static double get labelLarge => 14.sp; // Form labels
  static double get labelMedium => 12.sp; // Small labels
  static double get labelSmall => 10.sp; // Tiny labels

  /// Border radius values
  static double get radiusXS => 4.r; // Very small radius
  static double get radiusS => 8.r; // Small radius
  static double get radiusM => 12.r; // Medium radius (buttons, inputs)
  static double get radiusL => 16.r; // Large radius (cards)
  static double get radiusXL => 20.r; // Extra large radius (modals)
  static double get radiusXXL => 24.r; // Huge radius
  static double get radiusFull => 999.r; // Fully rounded (pills)

  /// Spacing values (margin, padding, gaps)
  static double get spaceXXS => 4.w; // Tiny space
  static double get spaceXS => 8.w; // Extra small space
  static double get spaceS => 12.w; // Small space
  static double get spaceM => 16.w; // Medium space (default)
  static double get spaceL => 20.w; // Large space
  static double get spaceXL => 24.w; // Extra large space
  static double get spaceXXL => 32.w; // Huge space
  static double get spaceXXXL => 40.w; // Massive space
  /// Vertical spacing
  static double get spaceVerticalXS => 8.h;
  static double get spaceVerticalS => 12.h;
  static double get spaceVerticalM => 16.h;
  static double get spaceVerticalL => 24.h;
  static double get spaceVerticalXL => 32.h;
  static double get spaceVerticalXXL => 48.h;

  /// Icon sizes
  static double get iconXS => 16.sp; // Tiny icons
  static double get iconS => 20.sp; // Small icons
  static double get iconM => 24.sp; // Medium icons (default)
  static double get iconL => 32.sp; // Large icons
  static double get iconXL => 48.sp; // Extra large icons
  static double get iconXXL => 64.sp; // Huge icons (upload icon)

  /// Button heights
  static double get buttonHeightS => 36.h; // Small button
  static double get buttonHeightM => 48.h; // Medium button (default)
  static double get buttonHeightL => 56.h; // Large button
  /// Button padding
  static double get buttonPaddingH => 24.w; // Horizontal padding
  static double get buttonPaddingV => 12.h; // Vertical padding

  /// Input field heights
  static double get inputHeight => 48.h; // Standard input height
  static double get inputHeightLarge => 56.h; // Large input height
  /// Input field padding
  static double get inputPaddingH => 16.w; // Horizontal padding
  static double get inputPaddingV => 14.h; // Vertical padding

  /// Card padding
  static double get cardPaddingS => 16.w; // Small card padding
  static double get cardPaddingM => 20.w; // Medium card padding
  static double get cardPaddingL => 24.w; // Large card padding
  /// Card elevation
  static const double cardElevation = 2.0; // Card shadow elevation

  /// Container constraints
  static double get containerMaxWidth => 600.w; // Max width for content
  static double get containerPadding => 20.w; // Default container padding

  /// Border widths
  static const double borderWidthThin = 1.0; // Thin border
  static const double borderWidthMedium = 2.0; // Medium border
  static const double borderWidthThick = 3.0; // Thick border
  /// Divider heights
  static const double dividerHeight = 1.0; // Standard divider

  /// Upload zone specific sizes
  static double get uploadZonePadding => 48.h; // Upload area padding
  static double get uploadZoneMinHeight => 200.h; // Minimum height

  /// AppBar sizes
  static double get appBarHeight => 56.h; // Standard app bar height
  static double get appBarPadding => 16.w; // App bar horizontal padding

  /// Bottom navigation bar
  static double get bottomNavHeight => 60.h; // Bottom nav height
  static double get bottomNavIconSize => 24.sp; // Bottom nav icon size

  /// Modal sizes
  static double get modalPadding => 24.w; // Modal content padding
  static double get modalMaxWidth => 450.w; // Max width for modals

  /// Animation durations (in milliseconds)
  static const int animationFast = 200; // Fast animation
  static const int animationNormal = 300; // Normal animation
  static const int animationSlow = 500; // Slow animation

  /// Opacity values
  static const double opacityDisabled = 0.6; // Disabled state
  static const double opacityOverlay = 0.8; // Modal overlay
  static const double opacityHover = 0.08; // Hover effect

  /// Material elevation
  static const double elevationNone = 0.0;
  static const double elevationLow = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationHigh = 8.0;
  static const double elevationVeryHigh = 16.0;
}
