import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dunno/components/dunno_scroll_view.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/models/spinner_segment.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flutter/material.dart';

import 'components/segment_list_tile.dart';

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
        spacing: 12.0,
        children: [
          Row(
            children: [
              Text(
                "Quick Spin",
                style: Theme.of(context).textTheme.titleMedium,
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
                      borderRadius: defaultBorderRadius,
                    ),
                    hintText: "New segment",
                  ),
                  controller: textController,
                  onEditingComplete: () {
                    final value = textController.text;
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
                icon: Icon(
                  Icons.delete_forever_rounded,
                  color: segments.isNotEmpty
                    ? Colors.red
                    : Theme.of(context).colorScheme.secondaryContainer,
                  size: 32,
                ),
              ),
            ],
          ),
          segments.isEmpty
              ? Expanded(
                  child: Center(child: Text("Add spinner segments above")),
                )
              : DunnoScrollView(
                  overlayHeight: 16,
                  children: segments
                      .mapIndexed(
                        (index, segment) => SegmentListTile(
                          index: index,
                          segment: segment,
                          onDismiss: (direction) {
                            setState(() {
                              segments.removeAt(index);
                            });
                          },
                        ),
                      )
                      .toList()
                      .reversed
                      .toList(),
                ),

          TextButton(
            onPressed: () {
              final spinner = SpinnerModel(
                title: "Quick Spin",
                color: Colors.primaries[0].toSimpleColor(),
                items: List.from(
                  segments.map((SpinnerSegment segment) => segment.title),
                ),
              );

              context.router.push(SpinnerRoute(spinner: spinner));
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
              textStyle: WidgetStatePropertyAll(TextStyle(color: Colors.white)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            child: Row(
              spacing: 8.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Go",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Icon(Icons.arrow_right_alt_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
