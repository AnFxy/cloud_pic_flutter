import 'package:cloud_pic_flutter/styles/xy_color.dart';
import 'package:cloud_pic_flutter/styles/xy_text_style.dart';
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

  // 白色圆角阴影
  static BoxDecoration get whiteRadiusShadow10 => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(color: PrimaryColor.grayShadow,offset: Offset(1, 1), blurRadius: 5),
        BoxShadow(color: PrimaryColor.grayShadow, offset: Offset(-1, -1), blurRadius: 5),
        BoxShadow(color: PrimaryColor.grayShadow, offset: Offset(1, -1), blurRadius: 5),
        BoxShadow(color: PrimaryColor.grayShadow, offset: Offset(-1, 1), blurRadius: 5)
      ]
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

  // 蓝色选中底部边框
  static BoxDecoration get selectedBorderRadius2 => BoxDecoration(
      color: PrimaryColor.selectBlue,
      borderRadius: BorderRadius.circular(2)
  );

  // 灰色未选中底部边框
  static BoxDecoration get unSelectedBorderRadius2 => BoxDecoration(
      color: PrimaryColor.grayF6,
      borderRadius: BorderRadius.circular(2)
  );

  // 输入框
  static InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: PrimaryTextStyle.grayText15,
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PrimaryColor.selectBlue, width: 2)
        ),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PrimaryColor.grayShadow, width: 1)
        )
    );
  }

  // 底部横线条
  static Container bottomLine(bool isSelect) {
    return Container(
        width: isSelect ? 26 : 20, height: isSelect ? 2 : 1, margin: const EdgeInsets.only(top: 6),
        decoration: isSelect ? SimpleView.selectedBorderRadius2 : SimpleView.unSelectedBorderRadius2
    );
  }

  // logo
  static Container get logoView => Container(
    width: 80,
    height: 80,
    margin: const EdgeInsets.only(top: 20),
    decoration: SimpleView.whiteRadius10,
    child: Align(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child:Image.asset('images/logo.jpg', width: 60, height: 60)
      )
    )
  );

}