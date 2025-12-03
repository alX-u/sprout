import 'package:flutter/material.dart';
import 'package:sprout/core/design/tokens/gen/colors.gen.dart';

class ColorFoundations {
  ColorFoundations._internal();

  static final base = _Base._();
  static final green = _Green._();
  static final icons = _Icons._();
  static final background = _Background._();
  static final text = _Text._();
}

class _Base {
  _Base._();

  final Color white = ColorsToken.white;
  final Color black = ColorsToken.black;
}

class _Green {
  _Green._();

  final Color green50 = ColorsToken.green50;
  final Color green100 = ColorsToken.green100;
  final Color green200 = ColorsToken.green200;
  final Color green300 = ColorsToken.green300;
  final Color green400 = ColorsToken.green400;
  final Color green500 = ColorsToken.green500;
  final Color green600 = ColorsToken.green600;
  final Color green700 = ColorsToken.green700;
  final Color green800 = ColorsToken.green800;
  final Color green900 = ColorsToken.green900;
}

class _Icons {
  _Icons._();

  final Color white = ColorsToken.white;
}

class _Background {
  _Background._();

  final Color appBarColor = ColorsToken.green700;
}

class _Text {
  _Text._();

  final Color white = ColorsToken.white;
  final Color black = ColorsToken.black;
}
