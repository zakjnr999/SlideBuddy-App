import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class LoadingSpinner extends StatelessWidget {
  final String? message;
  final String? subMessage;
  const LoadingSpinner({super.key, this.message, this.subMessage});
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 60,
            height: 60,
            child: CircularProgressIndicator(
              strokeWidth: 4,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
            ),
          ),
          if (message != null) ...[
            SizedBox(height: AppConstants.spaceL),
            Text(
              message!,
              style: TextStyle(
                fontSize: AppConstants.bodyLarge,
                fontWeight: FontWeight.w600,
                color: isDark ? DarkTheme.textPrimary : LightTheme.textPrimary,
              ),
            ),
          ],
          if (subMessage != null) ...[
            SizedBox(height: AppConstants.spaceS),
            Text(
              subMessage!,
              style: TextStyle(
                fontSize: AppConstants.bodyMedium,
                color: isDark
                    ? DarkTheme.textSecondary
                    : LightTheme.textSecondary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
