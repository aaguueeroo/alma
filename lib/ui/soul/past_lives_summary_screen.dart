import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/soul/past_lives_provider.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';

class PastLivesSummaryScreen extends ConsumerWidget {
  const PastLivesSummaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Life>> pastLivesAsync = ref.watch(pastLivesProvider);
    final l10n = AppLocalizations.of(context)!;
    final themeExt = Theme.of(context).extension<AppThemeExtension>();
    final padding =
        themeExt?.screenPadding ??
        const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
    final sectionGap = themeExt?.sectionGap ?? 28.0;
    final radius = themeExt?.radiusDefault ?? 12.0;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.pastLivesSummary),
        actions: const [
          DebugAppBarButton(navigationContext: DebugNavigationContext.mainMenu),
        ],
      ),
      body: pastLivesAsync.when(
        data: (List<Life> lives) {
          if (lives.isEmpty) {
            return Center(
              child: Padding(
                padding: padding,
                child: Text(
                  l10n.noPastLivesYet,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            );
          }
          return ListView.separated(
            padding: padding,
            itemCount: lives.length,
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: sectionGap * 0.5),
            itemBuilder: (BuildContext context, int index) {
              final Life life = lives[index];
              final LifeSummary? summary = life.summary;
              final int age = summary?.ageAtDeath ?? life.state.age;
              final String causeOfDeath =
                  summary?.causeOfDeath ?? life.state.causeOfDeath ?? 'Unknown';
              final String lifeName =
                  life.state.lifeData['name'] as String? ?? 'Unknown';
              return Material(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(radius),
                child: InkWell(
                  onTap: () => context.push('/soul/past-lives/${life.id}'),
                  borderRadius: BorderRadius.circular(radius),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.history,
                          color: Theme.of(context).colorScheme.primary,
                          size: 32,
                        ),
                        kHorizontalGap16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                lifeName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Died at age $age',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 2),
                              Text(
                                causeOfDeath,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object err, StackTrace _) => Center(
          child: Padding(
            padding: padding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  err.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => ref.invalidate(pastLivesProvider),
                  child: Text(l10n.retry),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
