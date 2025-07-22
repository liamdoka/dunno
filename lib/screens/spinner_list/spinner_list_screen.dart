import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/screens/spinner_list/components/favorite_spinner_list.dart';
import 'package:dunno/screens/spinner_list/components/recent_spinner_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:dunno/models/spinner_model.dart';

@RoutePage()
class SpinnerListScreen extends ConsumerWidget {
  const SpinnerListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allSpinners = ref.watch(spinnerListProvider).spinners;

    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: FloatingActionButton.extended(
                onPressed: () {
                  // TODO TEST
                },
                icon: Icon(Icons.add),
                label: Text("New Spinner")
            )
          ),
          allSpinners.isEmpty
            ? Center(child: Text("Go create a spinner and come back!"))
            : Column(
            spacing: 48.0,
            mainAxisSize: MainAxisSize.min,
            children: [
              RecentSpinnerList(),
              FavoriteSpinnerList()
            ],
          )
        ],
      ),
    );
  }
}