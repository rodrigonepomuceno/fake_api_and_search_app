import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';

class PillTop extends StatelessWidget {
  const PillTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 4.91,
        width: 35.81,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppThemes.instance.colors.grey1,
        ),
      ),
    );
  }
}
