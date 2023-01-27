import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  const AppTheme._();

  static final theme = ThemeData(
    primaryColor: AppColors.purplePrimary,
    primaryColorLight: AppColors.purpleLight,
    cardColor: AppColors.cardColor,
    dividerColor: AppColors.dividerColor,
    hintColor: AppColors.greyText,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        primary: AppColors.cardColor,
        onPrimary: Colors.black,
        textStyle: AppTextStyles.bodyText2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: const TextTheme(
      bodyText1: AppTextStyles.bodyText1,
      bodyText2: AppTextStyles.bodyText2,
      subtitle1: AppTextStyles.subtitle1,
      overline: AppTextStyles.overline,
    ),
    primaryTextTheme: TextTheme(
      bodyText1: AppTextStyles.bodyText1.copyWith(
        color: AppColors.white,
      ),
      bodyText2: AppTextStyles.bodyText2.copyWith(
        color: AppColors.white,
      ),
      overline: AppTextStyles.overline.copyWith(
        color: AppColors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.purplePrimary,
      titleTextStyle: AppTextStyles.appBarTitle,
      iconTheme: const IconThemeData(
        size: 22,
        color: AppColors.white,
      ),
    ),
  );
}
