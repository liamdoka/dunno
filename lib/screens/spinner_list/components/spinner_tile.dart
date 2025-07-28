import 'package:dunno/constants/sizes.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';

class SpinnerTile extends StatelessWidget {
  final SpinnerModel spinner;
  final Color color;
  final Widget? dismissBackground;
  final DismissDirectionCallback? onDismiss;
  final VoidCallback? onTap;

  const SpinnerTile({
    super.key,
    required this.spinner,
    required this.color,
    required this.dismissBackground,
    this.onDismiss,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = color.isBright
        ? Colors.blueGrey.shade900
        : Colors.blueGrey.shade50;

    return Dismissible(
        key: key ?? ObjectKey(spinner),
        direction: DismissDirection.startToEnd,
        onDismissed: onDismiss,
        background: dismissBackground,
        child: AnimatedContainer(
          key: key ?? ObjectKey(spinner),
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: color,
              borderRadius: defaultBorderRadius
          ),
          duration: const Duration(milliseconds: 500),
          child: InkWell(
            // TODO: Make this work
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  spinner.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
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