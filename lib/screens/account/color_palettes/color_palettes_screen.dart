import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/constants/numbers.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/color_palette_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ColorPalettesScreen extends ConsumerWidget {
  const ColorPalettesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorPalettes = ref.watch(colorPaletteListProvider);
    final defaultPalette = ref
        .watch(userPreferencesProvider)
        .defaultColorPalette;

    return DunnoScaffold(
      child: Stack(
        children: [
          Column(
            spacing: 24,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'All Color Palettes',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Flexible(
                child: ListView.separated(
                  itemCount: colorPalettes.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    final palette = colorPalettes[index];
                    return ColorPaletteTile(
                      palette: palette,
                      isDefault: palette.id == defaultPalette.id,
                      onTap: () => ref
                          .read(userPreferencesProvider.notifier)
                          .setDefaultColorPalette(palette),
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton.extended(
              heroTag: 'AddColorPalette',
              onPressed: () => context.router.push(EditColorPaletteRoute()),
              label: const Text('New color palette'),
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorPaletteTile extends StatelessWidget {
  const ColorPaletteTile({
    required this.palette,
    this.onTap,
    this.isDefault = false,
    super.key,
  });

  final ColorPaletteModel palette;
  final VoidCallback? onTap;
  final bool isDefault;

  @override
  Widget build(BuildContext context) => Material(
    elevation: 2,
    borderRadius: defaultBorderRadius,
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      onTap: onTap,
      borderRadius: defaultBorderRadius,
      child: SizedBox(
        height: AppNumbers.listTileHeight,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            // TODO(liamdoka): EditButton,
            Row(children: palette.colors.map(_buildSegment).toList()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                spacing: 12,
                children: [
                  if (isDefault)
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(9999),
                      ),
                      child: const Icon(
                        Icons.stars_rounded,
                        color: Colors.amber,
                      ),
                    ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: insetBorderRadius,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Text(
                      palette.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _buildSegment(SimpleColor color) =>
      Flexible(child: Container(color: color.toColor()));
}
