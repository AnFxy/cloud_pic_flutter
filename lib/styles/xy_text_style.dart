import 'package:flutter/material.dart';
import 'xy_color.dart';

class PrimaryTextStyle {
  static TextStyle get boldBlackText18 => TextStyle(
      color: PrimaryColor.black333,
      fontSize: 18,
      height: 1,
      fontWeight: FontWeight.bold
  );

  static TextStyle get boldWhiteText18 => const TextStyle(
      color: Colors.white,
      fontSize: 18,
      height: 1,
      fontWeight: FontWeight.bold
  );

  static TextStyle get boldBlackText14 => TextStyle(
    color: PrimaryColor.black333,
    fontSize: 14,
    height: 1,
    fontWeight: FontWeight.bold
  );

  static TextStyle get blackText18 => TextStyle(
      color: PrimaryColor.black333,
      fontSize: 18,
      height: 1
  );

  static TextStyle get blackText16 => TextStyle(
      color: PrimaryColor.black333,
      fontSize: 16,
      height: 1
  );

  static TextStyle get blackText14 => TextStyle(
      color: PrimaryColor.black333,
      fontSize: 14,
      height: 1.25
  );

  static TextStyle get primaryText16 => TextStyle(
      color: PrimaryColor.primaryBlue,
      fontSize: 16,
      height: 1
  );

  static TextStyle get primaryText14 => TextStyle(
      color: PrimaryColor.primaryBlue,
      fontSize: 14,
      height: 1
  );

  static TextStyle get primaryText12 => TextStyle(
      color: PrimaryColor.primaryBlue,
      fontSize: 12,
      height: 1
  );

  static TextStyle get grayText12 => TextStyle(
      color: PrimaryColor.grayF6,
      fontSize: 12,
      height: 1
  );

  static TextStyle get selectedText18 => TextStyle(
    color: PrimaryColor.primaryBlue,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    height: 1,
    decoration: TextDecoration.underline,
    decorationColor: PrimaryColor.primaryBlue
  );
}