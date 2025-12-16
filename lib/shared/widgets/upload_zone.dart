import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class UploadZone extends StatelessWidget {
  final VoidCallback onTap;
  final bool hasFile;
  final String? fileName;
  const UploadZone({
    super.key,
    required this.onTap,
    this.hasFile = false,
    this.fileName,
  });
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          minHeight: AppConstants.uploadZoneMinHeight,
        ),
        padding: EdgeInsets.all(AppConstants.uploadZonePadding),
        decoration: BoxDecoration(
          color: isDark ? DarkTheme.surface : LightTheme.surface,
          borderRadius: BorderRadius.circular(AppConstants.radiusL),
          border: Border.all(
            color: isDark ? DarkTheme.border : LightTheme.border,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_upload_outlined,
              size: AppConstants.iconXXL,
              color: AppColors.primary,
            ),
            SizedBox(height: AppConstants.spaceL),
            Text(
              hasFile && fileName != null ? fileName! : 'Drop your PDF here',
              style: TextStyle(
                fontSize: AppConstants.displaySmall,
                fontWeight: FontWeight.w600,
                color: isDark ? DarkTheme.textPrimary : LightTheme.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppConstants.spaceS),
            Text(
              hasFile ? 'Tap to change file' : 'or click to browse',
              style: TextStyle(
                fontSize: AppConstants.bodyMedium,
                color: isDark
                    ? DarkTheme.textSecondary
                    : LightTheme.textSecondary,
              ),
            ),
            SizedBox(height: AppConstants.spaceXS),
            Text(
              'Supports PDF files up to 10MB',
              style: TextStyle(
                fontSize: AppConstants.bodySmall,
                color: isDark ? DarkTheme.textMuted : LightTheme.textMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
