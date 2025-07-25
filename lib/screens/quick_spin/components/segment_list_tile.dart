import 'package:dunno/components/animation/grow_animation.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/models/spinner_segment.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';


// TODO: allocate color on first creation, agnostic of index
class SegmentListTile extends StatelessWidget {
  final SpinnerSegmentModel segment;
  final Color color;
  final DismissDirectionCallback? onDismiss;
  final VoidCallback? onTapIncrease;
  final VoidCallback? onTapDecrease;

  const SegmentListTile({
    super.key,
    required this.segment,
    required this.color,
    this.onDismiss,
    this.onTapIncrease,
    this.onTapDecrease,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = color.isBright
        ? Theme.of(context).colorScheme.surface
        : Theme.of(context).colorScheme.onSurface;


    return GrowAppearAnimation(
      duration: const Duration(milliseconds: 200),
      child: Dismissible(
        key: ValueKey(segment.toString()),
        onDismissed: onDismiss,
        background: Row(
          children: [
            Icon(Icons.delete_rounded, color: Colors.red)
          ],
        ),
        direction: DismissDirection.startToEnd,

        // not sure this animated container business actually works yet
        child: AnimatedContainer(
          height: 48,
          key: ValueKey(segment.title),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: defaultBorderRadius,
            color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(segment.title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: textColor
                    )),
              ),

              if (onTapIncrease != null && onTapDecrease != null)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: onTapDecrease,
                      icon: Icon(Icons.remove_circle, color: textColor),
                      padding: null,
                    ),
                    Text(segment.weight.toString(),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: textColor,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    IconButton(
                      onPressed: onTapIncrease,
                      icon: Icon(Icons.add_circle, color: textColor,),
                      padding: null,
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}