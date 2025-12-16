import 'package:flutter/material.dart';
import 'package:studdybuddy/core/theme/app_colors.dart';
import 'package:studdybuddy/shared/utils/constants.dart';

class HistoryCard extends StatelessWidget {
  final String filename;
  final String date;
  final int questionCount;
  final VoidCallback onTap;
  final VoidCallback onDelete;
  const HistoryCard({
    super.key,
    required this.filename,
    required this.date,
    required this.questionCount,
    required this.onTap,
    required this.onDelete,
  });
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: EdgeInsets.only(bottom: AppConstants.spaceM),
      decoration: BoxDecoration(
        color: isDark ? DarkTheme.overlayLight : LightTheme.surface,
        borderRadius: BorderRadius.circular(AppConstants.radiusL),
        border: Border.all(
          color: isDark ? DarkTheme.borderLight : LightTheme.border,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(AppConstants.radiusL),
          child: Padding(
            padding: EdgeInsets.all(AppConstants.cardPaddingM),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradient,
                    borderRadius: BorderRadius.circular(AppConstants.radiusM),
                  ),
                  child: Icon(
                    Icons.picture_as_pdf,
                    color: Colors.white,
                    size: AppConstants.iconM,
                  ),
                ),
                SizedBox(width: AppConstants.spaceM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filename,
                        style: TextStyle(
                          fontSize: AppConstants.bodyLarge,
                          fontWeight: FontWeight.w600,
                          color: isDark
                              ? DarkTheme.textPrimary
                              : LightTheme.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: AppConstants.spaceXS),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            size: AppConstants.iconXS,
                            color: isDark
                                ? DarkTheme.textMuted
                                : LightTheme.textMuted,
                          ),
                          SizedBox(width: AppConstants.spaceXS),
                          Text(
                            date,
                            style: TextStyle(
                              fontSize: AppConstants.bodySmall,
                              color: isDark
                                  ? DarkTheme.textMuted
                                  : LightTheme.textMuted,
                            ),
                          ),
                          SizedBox(width: AppConstants.spaceM),
                          Icon(
                            Icons.quiz,
                            size: AppConstants.iconXS,
                            color: isDark
                                ? DarkTheme.textMuted
                                : LightTheme.textMuted,
                          ),
                          SizedBox(width: AppConstants.spaceXS),
                          Text(
                            '$questionCount questions',
                            style: TextStyle(
                              fontSize: AppConstants.bodySmall,
                              color: isDark
                                  ? DarkTheme.textMuted
                                  : LightTheme.textMuted,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    color: AppColors.error,
                  ),
                  onPressed: onDelete,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
