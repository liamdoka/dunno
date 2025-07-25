
import 'package:auto_route/auto_route.dart';
import 'package:dunno/constants/sizes.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteSpinnerList extends ConsumerWidget {

  const FavoriteSpinnerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteSpinners = ref.watch(favoriteSpinnersProvider);

    return Column(
      spacing: 16.0,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Text("Favorite Spinners",
                style: Theme.of(context).textTheme.titleMedium
            ),
          ],
        ),
        favoriteSpinners.isEmpty
        ? Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Text("No favorite spinners...")
            )
        )
        : Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: favoriteSpinners.length,
              itemBuilder: (context, index) {
                final spinner = favoriteSpinners[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: FavoriteSpinnerTile(
                      spinner: spinner,
                      onDismiss: (direction) => ref
                          .read(spinnerListProvider.notifier)
                          .toggleFavorite(spinner.id),
                      onTap: () => context.router.push(SpinnerRoute(spinner: spinner)),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}


class FavoriteSpinnerTile extends StatelessWidget {
  final SpinnerModel spinner;
  final DismissDirectionCallback? onDismiss;
  final VoidCallback? onTap;

  const FavoriteSpinnerTile({
    super.key,
    required this.spinner,
    this.onDismiss,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key(spinner.id),
        direction: DismissDirection.startToEnd,
        onDismissed: onDismiss,
        background: Row(
          children: [
            Icon(Icons.star_border_rounded, color: Colors.amber.shade700)
          ],
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.deepOrange.shade900,
                      Colors.deepOrange.shade600
                    ]),
                // color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: defaultBorderRadius
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  spinner.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),

                if (spinner.description != null)
                  Text(spinner.description!)
              ],
            ),
          ),
        )
    );
  }
}