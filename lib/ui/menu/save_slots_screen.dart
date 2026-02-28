import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/core/models/soul.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/shared/loading_widget.dart';

class SaveSlotsScreen extends ConsumerStatefulWidget {
  const SaveSlotsScreen({super.key});

  @override
  ConsumerState<SaveSlotsScreen> createState() => _SaveSlotsScreenState();
}

class _SaveSlotsScreenState extends ConsumerState<SaveSlotsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(soulControllerProvider.notifier).loadSouls();
    });
  }

  @override
  Widget build(BuildContext context) {
    final soulState = ref.watch(soulControllerProvider);
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.saveSlots),
      ),
      body: soulState.isLoading
          ? const LoadingWidget()
          : soulState.souls.isEmpty
              ? _EmptyState(message: l10n.noSoulsYet)
              : ListView.builder(
                  padding: kPaddingScreen,
                  itemCount: soulState.souls.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Soul soul = soulState.souls[index];
                    return _SoulCard(
                      soul: soul,
                      onTap: () => _selectSoul(soul),
                      onLongPress: () => _showDeleteDialog(soul),
                    );
                  },
                ),
    );
  }

  Future<void> _selectSoul(Soul soul) async {
    await ref.read(soulControllerProvider.notifier).selectSoul(soul.id);
    if (mounted) {
      context.go('/soul');
    }
  }

  void _showDeleteDialog(Soul soul) {
    final l10n = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(l10n.deleteSoul),
        content: Text(l10n.confirmDelete),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () {
              ref.read(soulControllerProvider.notifier).deleteSoul(soul.id);
              Navigator.of(context).pop();
            },
            child: Text(l10n.confirm, style: const TextStyle(color: AppColors.negative)),
          ),
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kPaddingScreen,
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.neutral,
              ),
        ),
      ),
    );
  }
}

class _SoulCard extends StatelessWidget {
  const _SoulCard({
    required this.soul,
    required this.onTap,
    required this.onLongPress,
  });

  final Soul soul;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final dateFormat = DateFormat.yMMMd();
    return Card(
      margin: const EdgeInsets.only(bottom: kSpacing16),
      elevation: kCardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(kBorderRadius),
        child: Padding(
          padding: kPaddingAll16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                soul.name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              kVerticalGap8,
              Text(
                l10n.livesRemaining(soul.remainingLives),
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.lifeGreen,
                    ),
              ),
              kVerticalGap4,
              Text(
                dateFormat.format(soul.createdAt),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.neutral,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
