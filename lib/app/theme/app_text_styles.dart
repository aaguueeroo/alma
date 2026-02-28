import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle headline(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!;
  }

  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!;
  }

  static TextStyle subtitle(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!;
  }

  static TextStyle body(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!;
  }

  static TextStyle bodySmall(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!;
  }

  static TextStyle caption(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!;
  }

  static TextStyle label(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!;
  }

  static TextStyle labelSmall(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall!;
  }
}
