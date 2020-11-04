import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart';

abstract class StyleUtils {
  static const TextStyle textLabelStyle =
      TextStyle(color: ColorUtils.textColor, fontWeight: FontWeight.bold);
  static const TextStyle textHintStyle =
      TextStyle(color: ColorUtils.textHintColor, fontWeight: FontWeight.normal);
  static const TextStyle textInputStyle =
      TextStyle(color: ColorUtils.textColor, fontWeight: FontWeight.normal);
  static const TextStyle textMenuStyle =
      TextStyle(color: ColorUtils.textHomeColor, fontWeight: FontWeight.bold, fontSize: 25);

  //
  static Decoration bgInputField = BoxDecoration(
    color: ColorUtils.fieldBackground,
    border: Border.all(
      width: 1,
      color: ColorUtils.fieldBorder,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );

  //
  static Decoration bgButtonLogin = BoxDecoration(
    color: ColorUtils.buttonBackground,
    border: Border.all(
      width: 1,
      color: ColorUtils.buttonBackground,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );

  //
  static InputDecoration bgInputText(String content) => InputDecoration(
      border: InputBorder.none,
      hintText: content,
      hintStyle: StyleUtils.textHintStyle,
      suffixStyle: StyleUtils.textInputStyle);
}
