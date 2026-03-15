import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum DebugNavigationContext {
  mainMenu,
  lifeTab,
  workTab,
  educationTab,
  healthTab,
  relationsTab,
}

class DebugAppBarButton extends StatelessWidget {
  const DebugAppBarButton({super.key, required this.navigationContext});

  final DebugNavigationContext navigationContext;

  String get _route {
    switch (navigationContext) {
      case DebugNavigationContext.mainMenu:
      case DebugNavigationContext.lifeTab:
        return '/debug';
      case DebugNavigationContext.workTab:
        return '/debug/work';
      case DebugNavigationContext.educationTab:
        return '/debug/education';
      case DebugNavigationContext.healthTab:
        return '/debug/health';
      case DebugNavigationContext.relationsTab:
        return '/debug/social';
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.bug_report_outlined),
      tooltip: 'Debug',
      onPressed: () => context.push(_route),
    );
  }
}
