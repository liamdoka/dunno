
import 'package:dunno/components/animation/grow_animation.dart';
import 'package:dunno/constants/numbers.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/models/spinner_segment_model.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';

class SegmentListTile extends StatefulWidget {
  final SpinnerSegmentModel segment;
  final Color color;
  final VoidCallback? onDismiss;
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
  State<SegmentListTile> createState() => _SegmentListTileState();
}

class _SegmentListTileState extends State<SegmentListTile> {

  late final key = widget.key ?? ObjectKey(widget.segment);
  static const colorTransitionDuration = Duration(milliseconds: 500);
  static const appearTransitionDuration = Duration(milliseconds: 200);

  @override
  void didUpdateWidget(covariant SegmentListTile oldWidget) {
    if (oldWidget.color != widget.color) {
      setState(() {});
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final textColor = widget.color.isBright
        ? Colors.blueGrey.shade900
        : Colors.blueGrey.shade50;

    return GrowAppearAnimation(
      key: key,
      duration: appearTransitionDuration,
      child: AnimatedContainer(
        height: AppNumbers.listTileHeight,
        key: key,
        duration: colorTransitionDuration,
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: defaultBorderRadius,
          color: widget.color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(widget.segment.title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: textColor
                  )),
            ),

            if (widget.onTapIncrease != null && widget.onTapDecrease != null)
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: widget.onTapDecrease,
                    icon: Icon(widget.segment.weight > 1
                        ? Icons.remove_circle
                        : Icons.delete_rounded,
                        color: textColor
                    ),
                    padding: null,
                  ),
                  Text(widget.segment.weight.toString(),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: textColor,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    onPressed: widget.onTapIncrease,
                    icon: Icon(Icons.add_circle, color: textColor,),
                    padding: null,
                  )
                ],
              )
            else
              IconButton(
                onPressed: widget.onDismiss,
                icon: Icon(Icons.remove,
                    color: textColor
                ),
                padding: null,
              ),
          ],
        ),
      ),
    );
  }
}