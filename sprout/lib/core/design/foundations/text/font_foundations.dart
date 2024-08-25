import 'package:flutter/material.dart';
import 'package:sprout/core/design/foundations/color_foundations.dart';
import 'package:sprout/core/design/foundations/text/text_foundations.dart';

class FontFoundations {
  FontFoundations._internal();

  static final _Label label = _Label._();
}

class _Label {
  _Label._();

  //Size 16 regular white
  final TextStyle roboto16RegularWhite =
      TextTokens.roboto.regular_16.copyWith(color: ColorFoundations.text.white);
}
