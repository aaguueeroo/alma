import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show TargetPlatform, defaultTargetPlatform;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Builds a page that supports iOS swipe-from-edge back gesture when applicable.
Page<void> buildPageWithSwipeBack(GoRouterState state, Widget child) {
  if (defaultTargetPlatform == TargetPlatform.iOS) {
    return CupertinoPage(key: state.pageKey, child: child);
  }
  return MaterialPage(key: state.pageKey, child: child);
}
