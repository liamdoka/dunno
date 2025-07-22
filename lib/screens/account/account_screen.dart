
import 'package:auto_route/annotations.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        spacing: 12.0,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Account",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              ElevatedButton(
                onPressed: (){},
                child: Text("Sign in"),
              ),
                Divider(
                    thickness: 2,
                    color: Theme.of(context).colorScheme.surfaceContainer
                ),
                ElevatedButton(
                  onPressed: (){},
                  child: Text("Color Schemes"),
                ),
              ElevatedButton(
                onPressed: (){},
                child: Text("Deleted spinners"),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () async {
                  final box = HiveBox.spinners.name;

                  if (Hive.isBoxOpen(box)) {
                    await Hive.close();
                    await Hive.deleteBoxFromDisk(box);
                  }

                  await Hive.openBox<SpinnerModel>(box);
                  ref.invalidate(spinnerListProvider);
                },
                child: Text("Nuke account",
                  style: TextStyle(
                    color: Colors.red
                  ),
                ),
              ),
            ],),
          )
        ],
      ),
    );
  }
}