import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';

class ActionButton extends StatelessWidget {
  final double? top;
  final double? left;
  final double? right;
  final double? bottom;
  final Widget widget;
  final void Function()? onTap;
  const ActionButton({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    required this.widget,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppThemes.instance.colors.blackOpacit,
          ),
          child: widget,
        ),
      ),
    );
  }
}