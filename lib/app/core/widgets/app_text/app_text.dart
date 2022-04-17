import 'package:flutter/material.dart';
import 'package:news_app/app/core/theme/app_theme.dart';

class AppText {
  AppText._();
  static final _fontStyles = AppThemes.instance.fontStyles;

  static Text bodyMicroMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyMicroMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyMicroRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyMicroRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyMicroBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyMicroBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyTinyMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyTinyMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyTinyRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyTinyRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyTinyBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyTinyBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodySmallMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodySmallMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodySmallRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodySmallRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodySmallBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodySmallBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bodyBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bodyBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text subtitleMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.subtitleMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text subtitleRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.subtitleRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text subtitleBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.subtitleBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: 1,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text headerMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.headerMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text headerRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.headerRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text headerBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.headerBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text titleMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.titleMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text titleRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.titleRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text titleBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.titleBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bigTitleMedium(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bigTitleMedium.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bigTitleRegular(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bigTitleRegular.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );

  static Text bigTitleBold(String text, {Color? color, TextAlign? textAlign, int maxLines = 1, double height = 1}) => Text(
        text,
        style: _fontStyles.bigTitleBold.copyWith(color: color, height: height),
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: true,
        overflow: TextOverflow.ellipsis,
      );
}
