import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/core/models/life.dart';
import 'package:alma/core/models/life_template.dart';
import 'package:alma/core/models/skill.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';

class LifeSelectionScreen extends ConsumerWidget {
  const LifeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final soulState = ref.watch(soulControllerProvider);
    final List<LifeTemplate> templates = soulState.lifeTemplates;
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(fallbackRoute: '/soul'),
        title: Text(l10n.chooseLife),
      ),
      body: templates.isEmpty
          ? Center(
              child: Text(
                'No life templates available',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppColors.neutral,
                    ),
              ),
            )
          : ListView.builder(
              padding: kPaddingScreen,
              itemCount: templates.length,
              itemBuilder: (BuildContext context, int index) {
                final LifeTemplate template = templates[index];
                return _LifeTemplateCard(
                  template: template,
                  onTap: () => _showConfirmationAndStart(context, ref, template),
                );
              },
            ),
    );
  }

  void _showConfirmationAndStart(
    BuildContext context,
    WidgetRef ref,
    LifeTemplate template,
  ) {
    final l10n = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(l10n.startLife),
        content: Text(
          'Start life as "${template.name}"?',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              final Life life = await ref
                  .read(soulControllerProvider.notifier)
                  .startLife(template);
              await ref.read(lifeControllerProvider.notifier).loadLife(life);
              if (context.mounted) {
                context.go('/life');
              }
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }
}

class _LifeTemplateCard extends StatelessWidget {
  const _LifeTemplateCard({
    required this.template,
    required this.onTap,
  });

  final LifeTemplate template;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      margin: const EdgeInsets.only(bottom: kSpacing16),
      elevation: kCardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Padding(
          padding: kPaddingAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                template.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.lifeBlue,
                    ),
              ),
              kVerticalGap8,
              Text(
                template.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              kVerticalGap8,
              Row(
                children: <Widget>[
                  Icon(Icons.public, size: kIconSizeSmall, color: AppColors.neutral),
                  kHorizontalGap4,
                  Text(
                    template.country,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.neutral,
                        ),
                  ),
                ],
              ),
              kVerticalGap4,
              Text(
                template.familyBackground,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
              ),
              kVerticalGap12,
              Text(
                l10n.skills,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              kVerticalGap4,
              _SkillsSummary(skills: template.startingSkills),
            ],
          ),
        ),
      ),
    );
  }
}

class _SkillsSummary extends StatelessWidget {
  const _SkillsSummary({required this.skills});

  final SkillSet skills;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final List<String> parts = <String>[
      '${l10n.intelligence}: ${skills.intelligence}',
      '${l10n.creativity}: ${skills.creativity}',
      '${l10n.communication}: ${skills.communication}',
      '${l10n.emotionalStability}: ${skills.emotionalStability}',
      '${l10n.fitness}: ${skills.fitness}',
    ];
    return Text(
      parts.join(' • '),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppColors.neutral,
          ),
    );
  }
}
