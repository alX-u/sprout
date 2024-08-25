import 'package:flutter/material.dart';
import 'package:sprout/core/design/tokens/gen/fonts.gen.dart';

class TextTokens {
  TextTokens._internal();

  static RobotoText roboto = RobotoText._();
}

class RobotoText {
  RobotoText._();

  //Base text style
  static const TextStyle _roboto =
      TextStyle(fontFamily: FontsToken.roboto, decoration: TextDecoration.none);

  //Font size 16
  final TextStyle regular_16 =
      _roboto.copyWith(fontWeight: FontWeight.w400, fontSize: 16);
}
