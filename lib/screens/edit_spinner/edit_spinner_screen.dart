
import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/components/dunno_scroll_view.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/spinner_edit_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/models/spinner_segment.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../quick_spin/components/segment_list_tile.dart';

@RoutePage()
class EditSpinnerScreen extends ConsumerStatefulWidget {

  final String id;

  const EditSpinnerScreen({super.key,
    this.id = ""
  });

  @override
  ConsumerState<EditSpinnerScreen> createState() => _EditSpinnerScreenState();
}


class _EditSpinnerScreenState extends ConsumerState<EditSpinnerScreen> {

  late final TextEditingController titleController;
  late final TextEditingController descriptionController;
  late final TextEditingController segmentsController;

  // Shorthand for the provider family
  late final SpinnerEditProvider editProvider;

  bool isAdvancedExpanded = false;

  @override
  void initState() {
    super.initState();

    editProvider = spinnerEditProvider(widget.id);

    // Try and pre-fill controllers from the provider.
    final initialState = ref.read(editProvider);

    titleController = TextEditingController(text: initialState.title);
    descriptionController = TextEditingController(text: initialState.description);
    segmentsController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    segmentsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final editState = ref.watch(editProvider);
    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return DunnoScaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: Text(widget.id.isEmpty
            ? "Create Spinner"
            : "Edit Spinner"
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
                onPressed: () {
                  ref.read(editProvider.notifier).clearSegments();
                  titleController.clear();
                  descriptionController.clear();
                  segmentsController.clear();
                },
                child: Text("Reset", style: TextStyle(color: Colors.red))
            ),
          )
        ],
      ),
      child: Column(
        spacing: 16.0,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 16.0,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // TITLE
                  TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: defaultBorderRadius
                          ),
                          hintText: "Title"
                      ),
                      onChanged: ref.read(editProvider.notifier).setTitle
                  ),

                  // DESCRIPTION
                  TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: defaultBorderRadius
                          ),
                          hintText: "Description"
                      ),
                      minLines: 2,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodySmall,
                      onChanged: ref.read(editProvider.notifier).setDescription
                  ),

                  // SEGMENTS
                  Row(
                    spacing: 8.0,
                    children: [
                      Expanded(
                        child: TextField(
                            controller: segmentsController,
                            textInputAction: TextInputAction.newline,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: defaultBorderRadius
                                ),
                                hintText: "Add segments"
                            ),
                            onEditingComplete: () {
                              final value = segmentsController.text;
                              if (value.isEmpty) return;

                              final segment = SpinnerSegmentModel(
                                  title: value,
                                  color: palette.forIndexSimple(editState.segments.length)
                              );
                              ref.read(editProvider.notifier).addSegment(segment);
                              segmentsController.clear();
                            }),
                      ),
                      IconButton(
                        onPressed: editState.segments.isNotEmpty
                            ? ref.read(editProvider.notifier).clearSegments
                            : null,
                        icon: Icon(
                          Icons.delete_forever_rounded,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  DunnoScrollView(
                      overlayHeight: 0,
                      children: editState.segments
                          .mapIndexed((index, segment) {
                        return SegmentListTile(
                          color: palette.forIndex(index),
                          segment: segment,
                          onTapIncrease: () => ref.read(editProvider.notifier).increaseSegmentWeight(index),
                          onTapDecrease: () => ref.read(editProvider.notifier).decreaseSegmentWeight(index),
                          onDismiss: (direction) {
                            ref.read(editProvider.notifier)
                                .deleteSegment(index);
                          },
                        );
                      }).toList()
                  ),

                  // TODO some sort of color palette selection

                  // TODO some sort of emoji particle picker

                  // TODO is evil
                ],
              ),
            ),
          ),
          // SAVE BUTTON
          FilledButton(
              onPressed: () {
                ref.read(editProvider.notifier).save();

                // make sure family provider is not fucked after navigating back
                context.router.replace(SpinnerRoute(spinner: editState));
              },
              child: Text("Save and Spin")
          )
        ],
      ),
    );
  }

  Widget buildAdvancedOptions() {
    return Container();
  }
}