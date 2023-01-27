import 'package:flutter/material.dart';

import '../utils/app_constants.dart';
import 'app_colors.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const bodyText1 = TextStyle(
    fontSize: 16,
    fontFamily: AppConstants.poppinsFontFamily,
    package: AppConstants.packageName,
    fontWeight: FontWeight.w500,
  );
  static const bodyText2 = TextStyle(
    fontSize: 12,
    fontFamily: AppConstants.poppinsFontFamily,
    package: AppConstants.packageName,
    fontWeight: FontWeight.w500,
  );

  static const subtitle1 = TextStyle(
    fontSize: 12,
    fontFamily: AppConstants.poppinsFontFamily,
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
    package: AppConstants.packageName,
  );
  static const overline = TextStyle(
    fontSize: 10,
    fontFamily: AppConstants.poppinsFontFamily,
    fontWeight: FontWeight.w500,
    color: AppColors.greyText,
    package: AppConstants.packageName,
  );
  static final appBarTitle = AppTextStyles.bodyText1.copyWith(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    package: AppConstants.packageName,
  );
}
