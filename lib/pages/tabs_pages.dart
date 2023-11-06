import 'package:flutter/material.dart';
import 'package:meals/pages/categories_page.dart';
import 'package:meals/pages/favorite_page.dart';

class TabsPages extends StatelessWidget {
  const TabsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Vamos Cozinhar',
          ),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categorias',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favoritos',
            ),
          ]),
        ),
        body: TabBarView(children: [
          CategoriesPage(),
          FavoritePage(),
        ]),
      ),
    );
  }
}
