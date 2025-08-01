import 'package:auto_route/annotations.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/constants/numbers.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/color_palette_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/models/color_palette_model.dart';
import 'package:dunno/models/simple_color_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ColorPalettesScreen extends ConsumerWidget {
  const ColorPalettesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorPalettes = ref.watch(colorPaletteListProvider);

    return DunnoScaffold(
      child: Column(
        spacing: 24.0,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "All Color Palettes",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: ListView.separated(
              itemCount: colorPalettes.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8.0),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                final palette = colorPalettes[index];
                return ColorPaletteTile(
                  palette: palette,
                  onTap: () => ref
                      .read(userPreferencesProvider.notifier)
                      .setDefaultColorPalette(palette),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ColorPaletteTile extends StatelessWidget {
  final ColorPaletteModel palette;
  final VoidCallback? onTap;

  const ColorPaletteTile({super.key, required this.palette, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppNumbers.listTileHeight,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: defaultBorderRadius),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // TODO: Default indicator, Title, EditButton,
          Row(children: palette.colors.map(_buildSegment).toList()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              spacing: 12,
              children: [
                if (!palette.isFavorite)
                  Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(9999)
                      ),
                      child: Icon(Icons.stars_rounded, color: Colors.amber)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: insetBorderRadius,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: Text(palette.title, style: TextStyle(
                      fontWeight: FontWeight.bold
                  )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSegment(SimpleColor color) {
    return Flexible(flex: 1, child: Container(color: color.toColor()));
  }
}
