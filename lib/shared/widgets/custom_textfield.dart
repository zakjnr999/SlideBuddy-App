import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: AppConstants.bodyLarge,
        color: isDark ? DarkTheme.textPrimary : LightTheme.textPrimary,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: isDark ? DarkTheme.surfaceLight : LightTheme.surfaceLight,
        hintStyle: TextStyle(
          color: isDark ? DarkTheme.textMuted : LightTheme.textMuted,
          fontSize: AppConstants.bodyMedium,
        ),
        labelStyle: TextStyle(
          color: isDark ? DarkTheme.textSecondary : LightTheme.textSecondary,
          fontSize: AppConstants.labelLarge,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppConstants.inputPaddingH,
          vertical: AppConstants.inputPaddingV,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: BorderSide(
            color: isDark ? DarkTheme.border : LightTheme.border,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: BorderSide(
            color: isDark ? DarkTheme.border : LightTheme.border,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: const BorderSide(color: AppColors.error),
        ),
      ),
    );
  }
}
