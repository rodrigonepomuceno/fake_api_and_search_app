import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';

class ImageSummary extends StatelessWidget {
  final String icon;
  final String title;

  const ImageSummary({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          icon,
          height: 21,
          width: 21,
        ),
        const SizedBox(width: 6),
        AppText.bodySmallMedium(
          title,
          color: AppThemes.instance.colors.grey2,
        ),
      ],
    );
  }
}
