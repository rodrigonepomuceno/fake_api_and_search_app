import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';

class TypeCards extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final bool selected;
  const TypeCards({
    Key? key,
    required this.title,
    required this.onTap,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 43.3,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: selected ? AppThemes.instance.colors.blue1 : AppThemes.instance.colors.grey3,
            ),
            borderRadius: BorderRadius.circular(14),
            color: selected ? AppThemes.instance.colors.blue2 : AppThemes.instance.colors.white1,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AppText.bodyMedium(
                title,
                color: selected ? AppThemes.instance.colors.blackDefault : AppThemes.instance.colors.grey3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
