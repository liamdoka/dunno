
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dunno/data/spinner_list_provider.dart';
import 'package:dunno/hive/hive_adapters.dart';
import 'package:dunno/models/spinner_model.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        spacing: 24.0,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text("Account",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),

          Flexible(
            child: ListView(
              shrinkWrap: true,
              clipBehavior: Clip.none,
              children: [
                Divider(height: 1),
                DunnoSettingsButton(
                    icon: Icon(Icons.palette_rounded),
                    text: "Appearance",
                    onTap: () => context.router.push(AppearanceSettingsRoute())
                ),
                Divider(height: 1),
                DunnoSettingsButton(
                    icon: Icon(Icons.recycling_rounded),
                    text: "Recycle bin",
                    onTap: () =>
                      context.router.push(DeletedSpinnersRoute()),
                ),
                Divider(height: 1),
                DunnoSettingsButton(
                    icon: Icon(Icons.account_circle_rounded),
                    text: "Manage account",
                    onTap: () {}
                ),
                Divider(height: 1),
              ],
            ),
          ),

          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //   ElevatedButton(
          //     onPressed: (){},
          //     child: Text("Sign in"),
          //   ),
          //     Divider(
          //         thickness: 2,
          //         color: Theme.of(context).colorScheme.surfaceContainer
          //     ),
          //     ElevatedButton(
          //       onPressed: (){},
          //       child: Text("Color Schemes"),
          //     ),
          //   ElevatedButton(
          //     onPressed: (){},
          //     child: Text("Deleted spinners"),
          //   ),
          //   Spacer(),
          //   ElevatedButton(
          //     onPressed: () async {
          //       final box = HiveBox.spinners.name;
          //
          //       if (Hive.isBoxOpen(box)) {
          //         await Hive.close();
          //         await Hive.deleteBoxFromDisk(box);
          //       }
          //
          //       await Hive.openBox<SpinnerModel>(box);
          //       ref.invalidate(spinnerListProvider);
          //     },
          //     child: Text("Nuke account",
          //       style: TextStyle(
          //         color: Colors.red
          //       ),
          //     ),
          //   ),
          // ],)
        ],
      ),
    );
  }
}

class DunnoSettingsButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback? onTap;

  const DunnoSettingsButton({super.key, required this.icon, required this.text, required this.onTap});

  // @override
  // Widget build(BuildContext context) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Row(
  //         spacing: 24,
  //         children: [
  //           icon,
  //           Text(text),
  //         ],
  //       )
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      onTap: onTap,
      leading: icon,
      title: Text(text),
      trailing: Icon(Icons.chevron_right),
    );
  }
}