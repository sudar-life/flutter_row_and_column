import 'package:flutter/material.dart';

class OptionsContant {
  static final List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  static final List<MainAxisAlignment> mainAxisAlignments = [
    MainAxisAlignment.start,
    MainAxisAlignment.center,
    MainAxisAlignment.end,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly,
  ];
  static final List<CrossAxisAlignment> crossAxisAlignments = [
    CrossAxisAlignment.start,
    CrossAxisAlignment.center,
    CrossAxisAlignment.end,
    CrossAxisAlignment.stretch,
  ];
  static final List<MainAxisSize> mainAxisSizes = [
    MainAxisSize.min,
    MainAxisSize.max,
  ];
  static final List<TextDirection> textDirections = [
    TextDirection.ltr,
    TextDirection.rtl,
  ];
  static final List<VerticalDirection> verticalDirection = [
    VerticalDirection.up,
    VerticalDirection.down,
  ];
}
