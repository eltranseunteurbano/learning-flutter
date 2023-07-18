import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/side_menu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const Divider(),
            SwitchListTile.adaptive(
                value: Preferences.darkMode,
                title: const Text('Dark mode'),
                onChanged: (value) => setState(() {
                      Preferences.darkMode = value;
                      final themeProvider =
                          Provider.of<ThemeProvider>(context, listen: false);
                      value
                          ? themeProvider.setDarkMode()
                          : themeProvider.setLightMode();
                    })),
            const Divider(),
            RadioListTile<int>(
                selected: Preferences.gender == 1,
                value: 1,
                title: const Text('Masculino'),
                groupValue: Preferences.gender,
                onChanged: (value) => setState(() {
                      Preferences.gender = value ?? 1;
                    })),
            RadioListTile<int>(
                selected: Preferences.gender == 2,
                value: 2,
                title: const Text('Femenino'),
                groupValue: Preferences.gender,
                onChanged: (value) => setState(() {
                      Preferences.gender = value ?? 2;
                    })),
            const Divider(),
            TextFormField(
              initialValue: Preferences.name,
              onChanged: (value) => setState(() {
                Preferences.name = value;
              }),
              decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                  helperText: 'Nombre de usuario'),
            ),
          ],
        ),
      ),
    );
  }
}
