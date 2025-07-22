import 'package:dunno/models/spinner_segment.dart';
import 'package:flutter/material.dart';

class SegmentListTile extends StatelessWidget {
  final int index;
  final SpinnerSegment segment;
  final DismissDirectionCallback? onDismiss;
  final VoidCallback? onTapIncrease;
  final VoidCallback? onTapDecrease;

  const SegmentListTile({
    super.key,
    required this.index,
    required this.segment,
    this.onDismiss,
    this.onTapIncrease,
    this.onTapDecrease
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(segment.toString()),
      onDismissed: onDismiss,
      background: Row(
        children: [
          Icon(Icons.delete_forever_rounded, color: Colors.red,)
        ],
      ),
      direction: DismissDirection.startToEnd,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.primaries[index % Colors.primaries.length],
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(segment.title),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // TODO: Add weights to the segments
                IconButton(
                  onPressed: onTapDecrease,
                  icon: Icon(Icons.remove_circle),
                  padding: null,
                ),
                Text(segment.weight.toString(),
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(
                  onPressed: onTapIncrease,
                  icon: Icon(Icons.add_circle),
                  padding: null,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}