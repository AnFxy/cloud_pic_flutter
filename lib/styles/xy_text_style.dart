import 'package:flutter/material.dart';
import 'xy_color.dart';

class PrimaryTextStyle {
  static TextStyle get boldBlackText18 => TextStyle(
      color: PrimaryColor.black333,
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
}