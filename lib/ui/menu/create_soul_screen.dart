import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/theme/theme_data.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';
import 'package:alma/ui/debug/widgets/debug_app_bar_button.dart';

class CreateSoulScreen extends ConsumerStatefulWidget {
  const CreateSoulScreen({super.key});

  @override
  ConsumerState<CreateSoulScreen> createState() => _CreateSoulScreenState();
}

class _CreateSoulScreenState extends ConsumerState<CreateSoulScreen> {
  final TextEditingController _nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isCreating = false;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final soulState = ref.watch(soulControllerProvider);
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
        title: Text(l10n.createSoul),
        actions: const [
          DebugAppBarButton(navigationContext: DebugNavigationContext.mainMenu),
        ],
      ),
      body: Padding(
        padding: padding,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: sectionGap),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: l10n.soulName,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a soul name';
                  }
                  return null;
                },
                enabled: !_isCreating && !soulState.isLoading,
              ),
              SizedBox(height: sectionGap),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: _isCreating || soulState.isLoading
                      ? null
                      : () => _createSoul(),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                    ),
                  ),
                  child: soulState.isLoading
                      ? const SizedBox(
                          height: 24,
                          width: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(l10n.confirm),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _createSoul() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isCreating = true);
    final String name = _nameController.text.trim();
    await ref.read(soulControllerProvider.notifier).createSoul(name);
    if (!mounted) return;
    setState(() => _isCreating = false);
    final soulState = ref.read(soulControllerProvider);
    if (soulState.error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.createSoulError),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
      return;
    }
    if (soulState.currentSoul != null) {
      context.pop();
      context.push('/soul');
    }
  }
}
