import 'package:auto_route/auto_route.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/spinner_list/components/spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteSpinnerList extends ConsumerWidget {
  const FavoriteSpinnerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteSpinners = ref.watch(favoriteSpinnersProvider);
    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return Column(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text(
              'Favorite Spinners',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        if (favoriteSpinners.isEmpty)
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Text('No favorite spinners...'),
            ),
          )
        else
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: favoriteSpinners.length,
              itemBuilder: (context, index) {
                final spinner = favoriteSpinners[index];
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: SpinnerTile(
                    spinner: spinner,
                    color: palette.forIndex(index),
                    dismissBackground: const Row(
                      children: [
                        Icon(Icons.star_border_rounded, color: Colors.amber),
                      ],
                    ),
                    onDismiss: (direction) => ref
                        .read(spinnerListProvider.notifier)
                        .toggleFavorite(spinner.id),
                    onTap: () =>
                        context.router.push(SpinnerRoute(spinner: spinner)),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
