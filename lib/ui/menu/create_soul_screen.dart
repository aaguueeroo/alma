import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:alma/app/constants/spacing.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/l10n/app_localizations.dart';
import 'package:alma/providers/soul/soul_controller.dart';
import 'package:alma/ui/shared/back_button_leading.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonLeading(),
        title: Text(l10n.createSoul),
      ),
      body: Padding(
        padding: kPaddingScreen,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              kVerticalGap24,
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: l10n.soulName,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(kBorderRadius),
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
              kVerticalGap32,
              SizedBox(
                height: kButtonHeight,
                child: ElevatedButton(
                  onPressed: _isCreating || soulState.isLoading
                      ? null
                      : () => _createSoul(),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                  ),
                  child: soulState.isLoading
                      ? const SizedBox(
                          height: kIconSize,
                          width: kIconSize,
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
    if (mounted) {
      setState(() => _isCreating = false);
      context.go('/soul');
    }
  }
}
