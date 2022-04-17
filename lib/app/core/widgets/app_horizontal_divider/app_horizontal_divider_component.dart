import 'package:flutter/material.dart';

class AppHorizontalDivider extends StatelessWidget {
  final double? width;
  final double thickness;
  final Color backgroundColor;
  final Color? overlayColor;

  const AppHorizontalDivider({
    Key? key,
    required this.backgroundColor,
    this.thickness = 1,
    this.width,
    this.overlayColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: thickness,
      color: backgroundColor,
    );
  }
}
