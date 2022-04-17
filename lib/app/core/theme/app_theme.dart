

import 'package:news_app/app/core/theme/app_colors.dart';
import 'package:news_app/app/core/theme/app_font_styles.dart';
import 'package:news_app/app/core/theme/app_images.dart';

class AppThemes {
  AppThemes._();

  static final AppThemes instance = AppThemes._();

  AppColors get colors => AppColors.instance;
  AppImages get images => AppImages.instance;
  AppFontStyles get fontStyles => AppFontStyles.instance;
}
