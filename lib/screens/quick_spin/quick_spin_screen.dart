import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dunno/components/dunno_scroll_view.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/models/spinner_segment_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/segment_list_tile.dart';

@RoutePage()
class QuickSpinScreen extends ConsumerStatefulWidget {
  const QuickSpinScreen({super.key});

  @override
  ConsumerState<QuickSpinScreen> createState() => _QuickSpinScreenState();
}

class _QuickSpinScreenState extends ConsumerState<QuickSpinScreen> {
  final textController = TextEditingController();
  final focusNode = FocusNode();
  List<SpinnerSegmentModel> segments = [];

  @override
  void dispose() {
    focusNode.dispose();
    textController.dispose();
    super.dispose();
  }


  void addSegment() {
    final value = textController.text;
    if (value.isEmpty) return;

    final newSegment = SpinnerSegmentModel(
      title: value,
      // We don't care about the color because it's set on save.
      color: SimpleColor.red,
    );
    setState(() {
      segments = [...segments, newSegment];
    });

    textController.clear();
    focusNode.requestFocus();
  }


  @override
  Widget build(BuildContext context) {
    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return Container(
      clipBehavior: Clip.none,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        spacing: 12.0,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Quick Spin",
            style: Theme.of(context).textTheme.titleMedium,
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
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: IconButton(
                              style: ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    )
                                ),
                              ),
                              onPressed: addSegment,
                              icon: Icon(Icons.add)),
                        )
                    ),
                    controller: textController,
                    onEditingComplete: addSegment
                ),
              ),
            ],
          ),
          segments.isEmpty
              ? Expanded(
            child: Center(child: Text("Add spinner segments above")),
          )
              : Expanded(
            child: DunnoScrollView(
              autoScroll: true,
              overlayHeight: 16,
              children: segments
                  .mapIndexed(
                    (index, segment) => SegmentListTile(
                  key: ObjectKey(segment),
                  color: palette.forIndex(index),
                  segment: segment,
                  onDismiss: () =>
                      setState(() {
                        final newSegments =
                        List<SpinnerSegmentModel>.from(segments);
                        newSegments.removeAt(index);
                        segments = newSegments;
                      }),
                ),
              )
              .toList(),
            ),
          ),

          FilledButton.icon(
            onPressed: segments.length < 2
                ? null
                : () {
              final spinner = SpinnerModel(
                title: "Quick Spin",
                color: SimpleColor.red,
                segments: segments
                    .mapIndexed(
                      (index, segment) => segment.copyWith(
                    color: palette.forIndexSimple(index),
                  ),
                )
                    .toList(),
              );
              context.router.push(SpinnerRoute(spinner: spinner));
            },
            label: Text("Go"),
            iconAlignment: IconAlignment.end,
            icon: Icon(Icons.arrow_right_alt_rounded),
          ),
        ],
      ),
    );
  }
}
