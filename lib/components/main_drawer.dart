import 'package:flutter/material.dart';
import 'package:meals/utils/app_routes.dart';

import '../pages/tabs_pages.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget _createItem(
    IconData icon,
    String label,
    BuildContext context,
    Function() onTap,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.black54,
      ),
      title: Text(
        label,
        style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          alignment: Alignment.center,
          // width: double.infinity,
          padding: const EdgeInsets.all(10),
          color: Theme.of(context).colorScheme.background,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 30,
                    minRadius: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'João Paulo da C.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  // fontSize: 30,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [Text('Sobre Nome e Mais Info')],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        _createItem(Icons.restaurant, 'Refeições', context, () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TabsPages(),))),
        _createItem(Icons.settings, 'Configurações', context, () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETTINGS)),
      ],
    );
  }
}
