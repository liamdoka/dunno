import 'package:auto_route/annotations.dart';
import 'package:collection/collection.dart';
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
        spacing: 8.0,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TextField(
              focusNode: focusNode,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0)
                ),
                labelText: "Segments"
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 8.0,
                children: segments
                    .mapIndexed((index, segment) => SegmentListTile(segment: segment, index: index))
                    .toList().reversed.toList()
              ),
            ),
          ),
          // SizedBox(height: 64)
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurple.shade300),
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
  final SpinnerSegment segment;
  final int index;

  const SegmentListTile({super.key, required this.segment, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_circle),
                padding: null,
              ),
              Text(segment.weight.toString(),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_circle),
                padding: null,
              )
            ],
          )
        ],
      ),
    );
  }
}