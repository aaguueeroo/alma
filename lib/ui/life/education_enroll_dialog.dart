import 'package:flutter/material.dart';
import 'package:alma/core/models/education/education_prompt.dart';
import 'package:alma/core/models/education/education_program.dart';
import 'package:alma/core/models/education/education_level.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';

class EducationEnrollDialog extends StatelessWidget {
  const EducationEnrollDialog({
    super.key,
    required this.prompt,
    required this.onProgramSelected,
    required this.onDecline,
  });

  final EducationPrompt prompt;
  final void Function(EducationProgram program) onProgramSelected;
  final VoidCallback onDecline;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final Map<EducationLevel, List<EducationProgram>> byLevel =
        _groupProgramsByLevel(prompt.availablePrograms);
    return Dialog(
      insetPadding: kPaddingHorizontal16,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: kMaxContentWidth,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
        ),
        child: Padding(
          padding: kPaddingAll24,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                prompt.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              kVerticalGap12,
              Text(
                prompt.description,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              kVerticalGap24,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: _buildGroupedPrograms(context, l10n, byLevel),
                  ),
                ),
              ),
              if (prompt.canDecline) ...[
                kVerticalGap8,
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: onDecline,
                    child: Text(l10n.decline),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  static Map<EducationLevel, List<EducationProgram>> _groupProgramsByLevel(
    List<EducationProgram> programs,
  ) {
    final Map<EducationLevel, List<EducationProgram>> map =
        <EducationLevel, List<EducationProgram>>{};
    for (final EducationProgram program in programs) {
      map.putIfAbsent(program.level, () => <EducationProgram>[]).add(program);
    }
    return map;
  }

  List<Widget> _buildGroupedPrograms(
    BuildContext context,
    AppLocalizations l10n,
    Map<EducationLevel, List<EducationProgram>> byLevel,
  ) {
    final List<Widget> result = <Widget>[];
    for (final EducationLevel level in EducationLevel.values) {
      final List<EducationProgram>? programs = byLevel[level];
      if (programs == null || programs.isEmpty) continue;
      result.add(
        Padding(
          padding: const EdgeInsets.only(bottom: kSpacing8),
          child: Text(
            _levelDisplayName(l10n, level),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      );
      for (final EducationProgram program in programs) {
        result.add(
          Padding(
            padding: const EdgeInsets.only(bottom: kSpacing8),
            child: _ProgramChoiceButton(
              program: program,
              onTap: () => onProgramSelected(program),
            ),
          ),
        );
      }
      result.add(const SizedBox(height: kSpacing12));
    }
    return result;
  }

  String _levelDisplayName(AppLocalizations l10n, EducationLevel level) {
    return switch (level) {
      EducationLevel.preschool => l10n.educationLevelPreschool,
      EducationLevel.middleSchool => l10n.educationLevelMiddleSchool,
      EducationLevel.highSchool => l10n.educationLevelHighSchool,
      EducationLevel.university => l10n.educationLevelUniversity,
      EducationLevel.master => l10n.educationLevelMaster,
      EducationLevel.doctorate => l10n.educationLevelDoctorate,
    };
  }
}

class _ProgramChoiceButton extends StatelessWidget {
  const _ProgramChoiceButton({
    required this.program,
    required this.onTap,
  });

  final EducationProgram program;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: kPaddingAll16,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              program.name,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.left,
            ),
            kVerticalGap4,
            Text(
              program.description,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
