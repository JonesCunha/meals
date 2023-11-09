import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/models/settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.onSettingsChanged, required this.settings});

  final Function(Settings) onSettingsChanged;
  final Settings settings;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  Settings? settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function (bool) onChange,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChange(value);
        widget.onSettingsChanged(settings!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Configurações'),
        ),
        drawer: const Drawer( child: MainDrawer() ,) ,
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                    'Sem Gluten',
                    'Só Exibe Ref. Sem Glutem',
                    settings!.isGlutenFree,
                    (value) => setState(() => settings!.isGlutenFree = value),
                  ),
                  _createSwitch(
                    'Sem Lactose',
                    'Só Exibe Ref. Sem Lactose',
                    settings!.isLactoseFree,
                    (value) => setState(() => settings!.isLactoseFree = value),
                  ),
                  _createSwitch(
                    'Vegana',
                    'Só Exibe Ref. Veganas',
                    settings!.isVegan,
                    (value) => setState(() => settings!.isVegan = value),
                  ),
                  _createSwitch(
                    'Vegetariana',
                    'Só Exibe Ref. Vegetarianas',
                    settings!.isVegetarian,
                    (value) => setState(() => settings!.isVegetarian = value),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
