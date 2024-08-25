import 'package:flutter/material.dart';
import 'package:sprout/core/design/tokens/gen/colors.gen.dart';

class ColorFoundations {
  ColorFoundations._internal();

  static final _Icons icons = _Icons._();
  static final _Background background = _Background._();
}

class _Icons {
  _Icons._();

  final Color white = ColorsToken.white;
}

class _Background {
  _Background._();

  final Color appBarColor = ColorsToken.softgreen;
}
