import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  const ErrorMessage({super.key, required this.message, this.onRetry});
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: EdgeInsets.all(AppConstants.spaceM),
      decoration: BoxDecoration(
        color: isDark ? DarkTheme.errorOverlay : LightTheme.errorOverlay,
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        border: Border.all(color: AppColors.error.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: AppColors.errorLight,
            size: AppConstants.iconM,
          ),
          SizedBox(width: AppConstants.spaceM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(
                    color: AppColors.errorLight,
                    fontSize: AppConstants.bodyMedium,
                  ),
                ),
                if (onRetry != null) ...[
                  SizedBox(height: AppConstants.spaceS),
                  TextButton(
                    onPressed: onRetry,
                    child: const Text(
                      'Try Again',
                      style: TextStyle(
                        color: AppColors.errorLight,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
