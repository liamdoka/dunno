import 'package:auto_route/annotations.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/color_palette_edit_provider.dart';
import 'package:dunno/screens/account/appearance_settings/components/appearance_settings_panel.dart';
import 'package:dunno/utils/colors.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class EditColorPaletteScreen extends ConsumerStatefulWidget {

  const EditColorPaletteScreen({super.key, this.id = ''});
  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditColorPaletteScreen();
}

class _EditColorPaletteScreen extends ConsumerState<EditColorPaletteScreen> {
  late final TextEditingController titleController;
  late final TextEditingController colorHexController;
  late final ColorPaletteEditProvider editProvider;
  Color wheelColor = Colors.red;

  @override
  void initState() {
    super.initState();

    editProvider = colorPaletteEditProvider(widget.id);

    final initialState = ref.read(editProvider);
    titleController = TextEditingController(text: initialState.title);

    final hex = (initialState.colors.lastOrNull?.toColor() ?? wheelColor).hex;
    colorHexController = TextEditingController(text: hex);
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => DunnoScaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        forceMaterialTransparency: true,
        title: Text(
          widget.id.isEmpty ? 'Create Color Palette' : 'Edit Color Palette',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              onPressed: () {
                ref.read(editProvider.notifier).clearColors();
                titleController.clear();
              },
              child: Text(
                'Reset',
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          ),
        ],
      ),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: defaultBorderRadius,
                      ),
                      hintText: 'Title',
                    ),
                    onChanged: ref.read(editProvider.notifier).setTitle,
                  ),

                  AppearanceSettingsPanel(
                    title: 'Color',
                    children: [
                      //
                      TextField(
                        controller: colorHexController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: defaultBorderRadius,
                          ),
                          hintText: 'New color',
                          prefixIcon: Icon(Icons.tag),
                        ),
                        onChanged: (value) {
                          if (value.length == 6) {
                            setState(() {
                              wheelColor = HexColor.fromHex(value);
                            });
                          }
                        },
                      ),

                      SizedBox.square(
                        dimension: MediaQuery.of(context).size.width,
                        child: ColorWheelPicker(
                          color: wheelColor,
                          onChanged: (color) => setState(() {
                            wheelColor = color;
                          }),
                          hasBorder: true,
                          borderColor: Theme.of(
                            context,
                          ).colorScheme.primaryContainer,
                          wheelSquareBorderRadius: 12,
                          wheelSquarePadding: 12,
                          onWheel: (_) {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
}
