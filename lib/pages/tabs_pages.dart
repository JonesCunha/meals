import 'package:flutter/material.dart';
import 'package:meals/components/main_drawer.dart';
import 'package:meals/pages/categories_page.dart';
import 'package:meals/pages/favorite_page.dart';

class TabsPages extends StatefulWidget {
  const TabsPages({super.key});

  @override
  State<TabsPages> createState() => _TabsPagesState();
}

class _TabsPagesState extends State<TabsPages> {

  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens =  const [
    { 'title' : 'Lista de Categorias', 'screen' : CategoriesPage() } ,
    { 'title' : 'Meus Favoritos', 'screen' : FavoritePage()} ,
   ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreenIndex]['title'] as String,
        ),
      ),
      drawer: const Drawer(
        // width: MediaQuery.sizeOf(context).width * 0.5,
        child: MainDrawer(),
      ),
      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,     
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,   
        currentIndex: _selectedScreenIndex,
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Categorias',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Favoritos',
        ),
      ]),
    );
  }
}
