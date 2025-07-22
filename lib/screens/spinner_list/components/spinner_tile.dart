import 'package:dunno/constants/sizes.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:flutter/material.dart';

class SpinnerTile extends StatelessWidget {
  final SpinnerModel spinner;
  final DismissDirectionCallback? onDismiss;
  final VoidCallback? onTap;

  const SpinnerTile({
    super.key,
    required this.spinner,
    this.onDismiss,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key(spinner.id),
        direction: DismissDirection.startToEnd,
        onDismissed: onDismiss,
        background: Row(
          children: [
            Icon(Icons.delete_rounded, color: Colors.red)
          ],
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: defaultBorderRadius
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  spinner.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),

                if (spinner.description != null)
                  Text(spinner.description!)
              ],
            ),
          ),
        )
    );
  }
}