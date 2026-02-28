import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A leading widget for AppBar that goes back: pops if possible, otherwise navigates to home.
class BackButtonLeading extends StatelessWidget {
  const BackButtonLeading({
    super.key,
    this.fallbackRoute = '/',
  });

  final String fallbackRoute;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        if (context.mounted) {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go(fallbackRoute);
          }
        }
      },
    );
  }
}
