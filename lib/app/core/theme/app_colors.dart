import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static final AppColors instance = AppColors._();

  Color get greyDefault => const Color(0XFFA9A9A9);
  Color get grey1 => const Color(0XFFE5E5E5);
  Color get grey2 => const Color(0XFFDADADA);
  Color get grey3 => const Color(0XFFE6E6E6);
  Color get grey4 => const Color(0XFFC4C4C4);

  Color get whiteDefault => const Color(0XFFFFFFFF);
  Color get white1 => const Color(0XFFF9FBFC);
  Color get white2 => const Color(0XFFF9F9F9);

  Color get blackDefault => const Color(0XFF222222);
  Color get blackOpacit => Colors.black26;

  Color get blueDefault => const Color(0XFF66C2E9);
  Color get blue1 => const Color(0XFFA1D2E5);
  Color get blue2 => const Color(0XFFF0F9FC);

  Color get greenDefault => const Color(0XFF92D55B);

  Color get transparent => Colors.transparent;
}
