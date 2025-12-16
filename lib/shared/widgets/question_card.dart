import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class QuestionCard extends StatelessWidget {
  final int questionNumber;
  final String question;
  final String answer;
  const QuestionCard({
    super.key,
    required this.questionNumber,
    required this.question,
    required this.answer,
  });
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.only(bottom: AppConstants.spaceM),
      padding: EdgeInsets.all(AppConstants.cardPaddingM),
      decoration: BoxDecoration(
        color: isDark ? DarkTheme.overlayLight : LightTheme.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        border: Border.all(
          color: isDark ? DarkTheme.borderLight : LightTheme.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(AppConstants.radiusS),
                ),
                child: Center(
                  child: Text(
                    '$questionNumber',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: AppConstants.bodyMedium,
                    ),
                  ),
                ),
              ),
              SizedBox(width: AppConstants.spaceM),
              Expanded(
                child: Text(
                  question,
                  style: TextStyle(
                    fontSize: AppConstants.bodyLarge,
                    fontWeight: FontWeight.w600,
                    color: isDark
                        ? DarkTheme.textPrimary
                        : LightTheme.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: AppConstants.spaceM),
          Container(
            padding: EdgeInsets.all(AppConstants.spaceM),
            decoration: BoxDecoration(
              color: isDark
                  ? DarkTheme.primaryOverlay
                  : LightTheme.primaryOverlay,
              borderRadius: BorderRadius.circular(AppConstants.radiusS),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.3),
              ),
            ),
            child: Text(
              answer,
              style: TextStyle(
                fontSize: AppConstants.bodyMedium,
                color: isDark
                    ? DarkTheme.textSecondary
                    : LightTheme.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
