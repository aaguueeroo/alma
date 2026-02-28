import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:alma/core/models/relationship.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/providers/life/life_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/shared/trait_tag_widget.dart';

class RelationshipsScreen extends ConsumerWidget {
  const RelationshipsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final LifeControllerState lifeState = ref.watch(lifeControllerProvider);
    final List<Relationship> relationships =
        lifeState.currentLife?.state.relationships ?? [];
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(fallbackRoute: '/life'),
        title: const Text('Relationships'),
      ),
      body: relationships.isEmpty
          ? const Center(child: Text('No relationships yet'))
          : ListView.builder(
              padding: kPaddingScreen,
              itemCount: relationships.length,
              itemBuilder: (context, index) {
                return _RelationshipCard(relationship: relationships[index]);
              },
            ),
    );
  }
}

class _RelationshipCard extends StatelessWidget {
  const _RelationshipCard({required this.relationship});

  final Relationship relationship;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final double normalized =
        (relationship.value + 100) / 200;
    return Card(
      margin: const EdgeInsets.only(bottom: kSpacing12),
      child: Padding(
        padding: kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: kAvatarSizeSmall / 2,
                  backgroundColor: _getRoleColor(relationship.npc.role),
                  child: Text(
                    relationship.npc.name[0].toUpperCase(),
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                kHorizontalGap12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        relationship.npc.name,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        _getRoleLabel(relationship.npc.role),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: colors.onSurfaceVariant,
                            ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${relationship.value}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: relationship.value >= 0
                            ? AppColors.positive
                            : AppColors.negative,
                      ),
                ),
              ],
            ),
            kVerticalGap8,
            ClipRRect(
              borderRadius: BorderRadius.circular(kBorderRadiusSmall),
              child: LinearProgressIndicator(
                value: normalized,
                minHeight: kProgressBarHeight,
                backgroundColor: colors.surfaceContainerHighest,
                color: relationship.value >= 0
                    ? AppColors.positive
                    : AppColors.negative,
              ),
            ),
            if (relationship.npc.visibleTraits.isNotEmpty ||
                relationship.discoveredTraitCount > 0) ...[
              kVerticalGap8,
              Wrap(
                spacing: kSpacing4,
                runSpacing: kSpacing4,
                children: [
                  ...relationship.npc.visibleTraits.map(
                    (trait) => TraitTagWidget(label: trait.name),
                  ),
                  ...relationship.npc.hiddenTraits
                      .take(relationship.discoveredTraitCount)
                      .map(
                        (trait) => TraitTagWidget(
                          label: trait.name,
                          color: colors.tertiary,
                        ),
                      ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Color _getRoleColor(NpcRole role) {
    switch (role) {
      case NpcRole.parent:
        return AppColors.soulPurple;
      case NpcRole.sibling:
        return AppColors.lifeBlue;
      case NpcRole.friend:
        return AppColors.lifeGreen;
      case NpcRole.partner:
        return AppColors.compassionPink;
      case NpcRole.coworker:
        return AppColors.workAmber;
      case NpcRole.mentor:
        return AppColors.wisdomIndigo;
      case NpcRole.rival:
        return AppColors.courageRed;
      case NpcRole.child:
        return AppColors.funYellow;
    }
  }

  String _getRoleLabel(NpcRole role) {
    switch (role) {
      case NpcRole.parent:
        return 'Parent';
      case NpcRole.sibling:
        return 'Sibling';
      case NpcRole.friend:
        return 'Friend';
      case NpcRole.partner:
        return 'Partner';
      case NpcRole.coworker:
        return 'Coworker';
      case NpcRole.mentor:
        return 'Mentor';
      case NpcRole.rival:
        return 'Rival';
      case NpcRole.child:
        return 'Child';
    }
  }
}
