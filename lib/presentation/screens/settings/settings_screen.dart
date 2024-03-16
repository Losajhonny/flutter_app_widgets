import 'package:app_widgets/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String name = "settings_screen";

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Tema'),
            ListTile(
              leading: const Text('Tema 1'),
              onTap: () {
              },
              tileColor: colors.primary,
              style: ListTileStyle.list
            ),
            const Divider(),
            ElevatedButton(
                onPressed: () {},
                child: const Text("Go to Buttons Screen"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: colors.primary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
