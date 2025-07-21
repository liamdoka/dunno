import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/data/spinner_list_provider.dart';

@RoutePage()
class SpinnerListScreen extends ConsumerWidget {
  const SpinnerListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spinnerListState = ref.watch(spinnerListProvider);

    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: FloatingActionButton.extended(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("New Spinner")
            )
          ),
          Column(
            spacing: 16.0,
            children: [
              Row(
                children: [
                  Text("Recent Spinners",
                      style: Theme.of(context).textTheme.titleMedium
                  ),
                ],
              ),
              Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: spinnerListState.spinners.length,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      child: SpinnerTile(
                        index: index,
                        spinner: spinnerListState.spinners[index],
                        onTap: () {

                        },
                      ),
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        spacing: 8.0,
                        children: [
                          Text("All Spinners"),
                          Icon(Icons.arrow_right_alt_rounded)
                        ],
                      )
                  )
                ],
              ),
              Spacer()
            ],
          ),
        ],
      ),
    );
  }
}

class SpinnerTile extends StatelessWidget {
  final int index;
  final SpinnerModel spinner;
  final VoidCallback? onTap;

  const SpinnerTile({
    super.key,
    required this.spinner,
    required this.index,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {

    return ListTile(
        title: Text(
          spinner.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        subtitle: spinner.description == null
            ? null
            : Text(
          spinner.description!,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        tileColor: Colors.primaries[index % Colors.primaries.length],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
        onTap: onTap
    );
  }
}