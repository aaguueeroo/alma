import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Builds a page with subtle fade transition and iOS swipe-from-edge back when applicable.
Page<void> buildPageWithSwipeBack(GoRouterState state, Widget child) {
  const Duration fadeDuration = Duration(milliseconds: 300);
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CustomTransitionPage<void>(
      key: state.pageKey,
      child: child,
      transitionDuration: fadeDuration,
      reverseTransitionDuration: fadeDuration,
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: child,
    transitionDuration: fadeDuration,
    reverseTransitionDuration: fadeDuration,
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
