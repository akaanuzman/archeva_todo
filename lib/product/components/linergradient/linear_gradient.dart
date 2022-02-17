import 'package:flutter/material.dart';

class ColoredLinearGradient extends LinearGradient {
  ColoredLinearGradient(
      {required Color firstColor, required Color secondaryColor})
      : super(
          colors: [firstColor, secondaryColor],
          stops: const [0.1, 0.9],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );
}
