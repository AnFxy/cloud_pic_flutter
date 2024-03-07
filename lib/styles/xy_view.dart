import 'package:cloud_pic_flutter/styles/xy_color.dart';
import 'package:flutter/material.dart';

class SimpleView {
  // 通用渐变
  static BoxDecoration get gradientDecoration => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            PrimaryColor.primaryBlue,
            Colors.white
          ]
      )
  );

  // 蓝色渐变 左 到 右边
  static BoxDecoration get gradientBlueHDecoration => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            PrimaryColor.primaryBlue,
            PrimaryColor.darkBlue
          ]
      ),
      borderRadius: BorderRadius.circular(20)
  );

  // 白色圆角
  static BoxDecoration get whiteRadius10 => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
  );

  // 灰色圆角
  static BoxDecoration get grayRadius10 => BoxDecoration(
      color: PrimaryColor.grayF6,
      borderRadius: BorderRadius.circular(10)
  );

  // 灰色边框圆角
  static BoxDecoration get grayBorderRadius10 => BoxDecoration(
      border: Border.all(width: 2, color: PrimaryColor.grayF6),
      borderRadius: BorderRadius.circular(10)
  );

  // 蓝色选中边框圆角
  static BoxDecoration get selectedBorderRadius10 => BoxDecoration(
      color: PrimaryColor.primaryBlue,
      border: Border.all(width: 2, color: Colors.white),
      borderRadius: BorderRadius.circular(10)
  );
}