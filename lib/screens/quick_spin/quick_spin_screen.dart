import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/utils/colors.dart';
import 'package:dunno/utils/uuid.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quick_spin_screen.freezed.dart';

@freezed
sealed class SpinnerSegment with _$SpinnerSegment {
  const factory SpinnerSegment({
    required String title,
    @Default(1) int weight
  }) = _SpinnerSegment;
}


@RoutePage()
class QuickSpinScreen extends StatefulWidget {
  const QuickSpinScreen({super.key});

  @override
  State<QuickSpinScreen> createState() => _QuickSpinScreenState();
}

class _QuickSpinScreenState extends State<QuickSpinScreen> {
  final textController = TextEditingController();
  final focusNode = FocusNode();
  final List<SpinnerSegment> segments = [];

  @override
  void dispose() {
    focusNode.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        spacing: 24.0,
        children: [
          Row(
            children: [
              Text("Quick Spin",
                style: Theme.of(context).textTheme.titleMedium
              ),
            ],
          ),
          Row(
            spacing: 8.0,
            children: [
              Expanded(
                child: TextField(
                  focusNode: focusNode,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: defaultBorderRadius
                    ),
                    hintText: "New segment",
                  ),
                  controller: textController,
                  onSubmitted: (String value) {
                    if (value.isEmpty) return;

                    final newSegment = SpinnerSegment(title: value);
                    setState(() {
                      segments.add(newSegment);
                    });

                    textController.clear();
                    focusNode.requestFocus();
                  },
                ),
              ),
              IconButton(
                  onPressed: () => setState(() {
                    segments.clear();
                  }),
                  icon: Icon(Icons.delete_forever_rounded,
                    color: Colors.red,
                    size: 32,
                  ),
              )
            ],
          ),
          segments.isEmpty
          ? Expanded(child: Center(child: Text("Add spinner segments above"),))
          : Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 8.0,
                children: segments
                    .mapIndexed((index, segment) => SegmentListTile(
                    index: index, 
                    segment: segment,
                  onDismiss: (direction) {
                    setState(() {
                      segments.removeAt(index);
                    });
                  }
                ))
                    .toList().reversed.toList()
              ),
            ),
          ),

          TextButton(
            onPressed: () {
              final spinner = SpinnerModel(
                  title: "Quick Spin",
                  color: Colors.primaries[0].toSimpleColor(),
                  items: List.from(segments.map(
                          (SpinnerSegment segment) => segment.title)
                  )
              );
              
              context.router.push(SpinnerRoute(spinner: spinner));
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
              textStyle: WidgetStatePropertyAll(
                TextStyle(
                  color: Colors.white
                )
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)
                )
              )
            ),
            child: Row(
              spacing: 8.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Go",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Icon(Icons.arrow_right_alt_rounded)
              ],
            )
          ),
        ],
      ),
    );
  }
}

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