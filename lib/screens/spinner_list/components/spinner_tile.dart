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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      child: Dismissible(
          key: key ?? ObjectKey(spinner),
          direction: DismissDirection.startToEnd,
          onDismissed: onDismiss,
          background: Row(
            children: [
              Icon(Icons.delete_rounded, color: Colors.red)
            ],
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.deepPurple.shade700,
                    Colors.deepPurple.shade500
                  ]),
                borderRadius: defaultBorderRadius
            ),
            child: InkWell(
              // TODO: Make this work
              onTap: onTap,
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
      ),
    );
  }
}