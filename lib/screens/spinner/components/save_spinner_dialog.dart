import 'package:auto_route/auto_route.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SaveSpinnerDialog extends ConsumerStatefulWidget {
  const SaveSpinnerDialog({required this.spinner, super.key});

  final SpinnerModel spinner;

  @override
  ConsumerState<SaveSpinnerDialog> createState() => _SaveSpinnerDialogState();
}

class _SaveSpinnerDialogState extends ConsumerState<SaveSpinnerDialog> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.transparent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: defaultBorderRadius,
          ),
          padding: const EdgeInsets.all(24),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            spacing: 24,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Name your spinner',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextField(
                autofocus: true,
                controller: textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: defaultBorderRadius),
                  hintText: 'Quick Spin',
                ),
              ),
              FilledButton(
                onPressed: () {
                  final newSpinner = widget.spinner.copyWith(
                    title: textController.text,
                  );
                  ref.read(spinnerListProvider.notifier)
                      .saveSpinner(newSpinner);
                  context.router.replaceAll([const SpinnerListRoute()]);
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
        const SizedBox.shrink(),
      ],
    ),
  );
}
