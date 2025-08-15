import 'package:auto_route/auto_route.dart';
import 'package:dunno/components/dunno_scaffold.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/data/user_preferences_provider.dart';
import 'package:dunno/router.gr.dart';
import 'package:dunno/screens/spinner_list/components/spinner_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AllSpinnersScreen extends ConsumerStatefulWidget {
  const AllSpinnersScreen({super.key});

  @override
  ConsumerState<AllSpinnersScreen> createState() => _AllSpinnersScreenState();
}

class _AllSpinnersScreenState extends ConsumerState<AllSpinnersScreen> {
  final searchBarFocusNode = FocusNode();
  final searchBarController = TextEditingController();

  String filterText = '';

  @override
  void dispose() {
    searchBarFocusNode.dispose();
    searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allSpinners = ref
        .watch(allSpinnersProvider)
        .where((spinner) => spinner.title.contains(filterText))
        .toList();

    final palette = ref.watch(userPreferencesProvider).defaultColorPalette;

    return DunnoScaffold(
      child: Column(
        spacing: 24,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchBar(
            focusNode: searchBarFocusNode,
            controller: searchBarController,
            onChanged: (text) => setState(() {
              filterText = text;
            }),
            onTapOutside: (_) => searchBarFocusNode.unfocus(),
            hintText: 'Search spinners...',
            elevation: const WidgetStatePropertyAll(1),
            leading: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.search),
            ),
            trailing: [
              IconButton(
                onPressed: () {
                  searchBarController.clear();
                  setState(() => filterText = '');
                },
                icon: const Icon(Icons.clear_rounded),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'All Spinners',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Flexible(
            child: ListView.separated(
              itemCount: allSpinners.length,
              separatorBuilder: (_, _) => const SizedBox(height: 8),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                final spinner = allSpinners[index];
                return SpinnerTile(
                  spinner: spinner,
                  color: palette.forIndex(index),
                  dismissBackground: Row(
                    children: [
                      Icon(
                        Icons.delete_rounded,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ],
                  ),
                  onDismiss: (_) => ref
                      .read(spinnerListProvider.notifier)
                      .deleteSpinner(spinner.id),
                  onTap: () =>
                      context.router.push(SpinnerRoute(spinner: spinner)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
