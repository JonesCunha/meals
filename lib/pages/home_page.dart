import 'package:flutter/material.dart';
import 'package:meals/pages/categories_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar?'),
        centerTitle: true,
      ),
      body: CategoriesPage(),
    );
  }
}
