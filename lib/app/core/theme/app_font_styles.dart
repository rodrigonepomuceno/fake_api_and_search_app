import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFontStyles {
  AppFontStyles._();

  static final AppFontStyles instance = AppFontStyles._();

  static const FontWeight _regular = FontWeight.w400;
  static const FontWeight _medium = FontWeight.w500;
  static const FontWeight _bold = FontWeight.w700;

  TextStyle get bodyMicroRegular => GoogleFonts.roboto(fontSize: 10, fontWeight: _regular);
  TextStyle get bodyMicroMedium => GoogleFonts.roboto(fontSize: 10, fontWeight: _medium);
  TextStyle get bodyMicroBold => GoogleFonts.roboto(fontSize: 10, fontWeight: _bold);

  TextStyle get bodyTinyRegular => GoogleFonts.roboto(fontSize: 12, fontWeight: _regular);
  TextStyle get bodyTinyMedium => GoogleFonts.roboto(fontSize: 12, fontWeight: _medium);
  TextStyle get bodyTinyBold => GoogleFonts.roboto(fontSize: 12, fontWeight: _bold);

  TextStyle get bodySmallRegular => GoogleFonts.roboto(fontSize: 14, fontWeight: _regular);
  TextStyle get bodySmallMedium => GoogleFonts.roboto(fontSize: 14, fontWeight: _medium);
  TextStyle get bodySmallBold => GoogleFonts.roboto(fontSize: 14, fontWeight: _bold);

  TextStyle get bodyRegular => GoogleFonts.roboto(fontSize: 16, fontWeight: _regular);
  TextStyle get bodyMedium => GoogleFonts.roboto(fontSize: 16, fontWeight: _medium);
  TextStyle get bodyBold => GoogleFonts.roboto(fontSize: 16, fontWeight: _bold);

  TextStyle get subtitleMedium => GoogleFonts.poppins(fontSize: 18, fontWeight: _medium);
  TextStyle get subtitleRegular => GoogleFonts.poppins(fontSize: 18, fontWeight: _regular);
  TextStyle get subtitleBold => GoogleFonts.poppins(fontSize: 18, fontWeight: _bold);

  TextStyle get headerRegular => GoogleFonts.roboto(fontSize: 20, fontWeight: _regular);
  TextStyle get headerMedium => GoogleFonts.roboto(fontSize: 20, fontWeight: _medium);
  TextStyle get headerBold => GoogleFonts.roboto(fontSize: 20, fontWeight: _bold);

  TextStyle get titleRegular => GoogleFonts.roboto(fontSize: 24, fontWeight: _regular);
  TextStyle get titleMedium => GoogleFonts.roboto(fontSize: 24, fontWeight: _medium);
  TextStyle get titleBold => GoogleFonts.roboto(fontSize: 24, fontWeight: _bold);

  TextStyle get bigTitleRegular => GoogleFonts.roboto(fontSize: 32, fontWeight: _regular);
  TextStyle get bigTitleMedium => GoogleFonts.roboto(fontSize: 32, fontWeight: _medium);
  TextStyle get bigTitleBold => GoogleFonts.roboto(fontSize: 32, fontWeight: _bold);
}
