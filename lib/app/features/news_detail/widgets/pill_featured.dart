import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';

class PillFeatured extends StatelessWidget {
  final void Function() onTap;
  final double top;
  final bool featured;
  const PillFeatured({
    Key? key,
    required this.onTap,
    required this.top,
    required this.featured,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 26,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 26,
          width: 83,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: featured ? AppThemes.instance.colors.greenDefault : AppThemes.instance.colors.blackOpacit,
          ),
          child: Center(
            child: AppText.bodyTinyBold(
              'FEATURED',
              color: AppThemes.instance.colors.whiteDefault,
            ),
          ),
        ),
      ),
    );
  }
}