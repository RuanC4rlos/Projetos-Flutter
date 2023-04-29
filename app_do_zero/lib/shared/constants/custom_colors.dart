import 'package:flutter/material.dart';

class CustomColors {
  final Color _acttivePrimaryButton = const Color.fromARGB(255, 63, 81, 181);
  final Color _acttiveSecondaryButton =
      const Color.fromARGB(255, 230, 230, 255);
  final Color _gradientMainColor = const Color.fromARGB(255, 0, 75, 200);
  final Color _gradientSecColor = const Color.fromARGB(255, 75, 175, 255);

  Color getActivePrimaryButtonColor() {
    return _acttivePrimaryButton;
  }

  Color getActiveSecondaryButtonColor() {
    return _acttiveSecondaryButton;
  }

  Color getGradientMainColor() {
    return _gradientMainColor;
  }

  Color getGradientSecondaryColor() {
    return _gradientSecColor;
  }
}
