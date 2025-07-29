
import 'package:auto_route/auto_route.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
                    icon: Icon(Icons.auto_awesome_motion_rounded),
                    text: "Content",
                    onTap: () {}
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