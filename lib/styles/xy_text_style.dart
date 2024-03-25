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
      color: PrimaryColor.selectBlue,
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

  static TextStyle get grayText16 => TextStyle(
      color: PrimaryColor.grayText,
      fontSize: 16,
      height: 1
  );
  static TextStyle get grayText15 => TextStyle(
      color: PrimaryColor.grayText,
      fontSize: 15,
      height: 1
  );

  static TextStyle get grayBoldText16 => TextStyle(
      color: PrimaryColor.grayText,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      height: 1
  );

  static TextStyle get grayText18 => TextStyle(
      color: PrimaryColor.grayText,
      fontSize: 18,
      height: 1
  );

  static TextStyle get selectedText18 => TextStyle(
    color: PrimaryColor.selectBlue,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    height: 1,
    decoration: TextDecoration.underline,
    decorationColor: PrimaryColor.selectBlue
  );

  static TextStyle get selectedText20 => TextStyle(
      color: PrimaryColor.selectBlue,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 1
  );

  static TextStyle get selectedText22 => TextStyle(
      color: PrimaryColor.selectBlue,
      fontWeight: FontWeight.w600,
      fontSize: 22,
      height: 1
  );
}