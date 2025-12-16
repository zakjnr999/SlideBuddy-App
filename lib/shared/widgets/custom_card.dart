import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final bool showBorder;
  const CustomCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.backgroundColor,
    this.showBorder = true,
  });
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (isDark ? DarkTheme.overlayLight : LightTheme.surface),
        borderRadius: BorderRadius.circular(AppConstants.radiusL),
        border: showBorder
            ? Border.all(
                color: isDark ? DarkTheme.borderLight : LightTheme.border,
              )
            : null,
        boxShadow: isDark
            ? null
            : [
                const BoxShadow(
                  color: LightTheme.overlayLight,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppConstants.radiusL),
          child: Padding(
            padding: padding ?? EdgeInsets.all(AppConstants.cardPaddingM),
            child: child,
          ),
        ),
      ),
    );
  }
}
