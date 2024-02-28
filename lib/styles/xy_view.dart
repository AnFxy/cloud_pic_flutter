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
}