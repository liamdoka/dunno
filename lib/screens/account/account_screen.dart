import 'package:auto_route/auto_route.dart';
import 'package:dunno/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Container(
    padding: const EdgeInsets.symmetric(vertical: 24),
    child: Column(
      spacing: 24,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Account',
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
              const Divider(height: 1),
              DunnoSettingsButton(
                icon: const Icon(Icons.light_mode_rounded),
                text: 'Appearance',
                onTap: () => context.router.push(AppearanceSettingsRoute()),
              ),
              const Divider(height: 1),
              DunnoSettingsButton(
                icon: const Icon(Icons.palette_rounded),
                text: 'Color Palettes',
                onTap: () => context.router.push(const ColorPalettesRoute()),
              ),
              const Divider(height: 1),
              DunnoSettingsButton(
                icon: const Icon(Icons.recycling_rounded),
                text: 'Recycle bin',
                onTap: () => context.router.push(const DeletedSpinnersRoute()),
              ),
              const Divider(height: 1),
              DunnoSettingsButton(
                icon: const Icon(Icons.account_circle_rounded),
                text: 'Manage account',
                onTap: () {},
              ),
              const Divider(height: 1),
            ],
          ),
        ),
      ],
    ),
  );
}

class DunnoSettingsButton extends StatelessWidget {
  const DunnoSettingsButton({
    required this.icon,
    required this.text,
    required this.onTap,
    super.key,
  });

  final Icon icon;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    onTap: onTap,
    leading: icon,
    title: Text(text),
    trailing: const Icon(Icons.chevron_right),
  );
}
