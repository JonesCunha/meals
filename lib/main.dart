import 'package:flutter/material.dart';
import 'package:meals/pages/meal_detail_page.dart';
import 'package:meals/pages/tabs_pages.dart';
import 'pages/categories_page_meals.dart';
import 'pages/settings_page.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.blueGrey,
        cardColor: Colors.amberAccent,
        colorScheme: const ColorScheme(
          error: Colors.red,
          brightness: Brightness.light,
          primary: Colors.blueGrey,
          onPrimary: Colors.black45,
          secondary: Colors.amberAccent,
          onSecondary: Colors.pink,
          onError: Colors.red,
          surface: Colors.white,
          onSurface: Colors.white24,
          background: Color.fromRGBO(255, 254, 229, 1),
          onBackground: Color.fromRGBO(255, 254, 229, 1)
        ),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        //cor padrão de fundo no thema.
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      ),
      home: const TabsPages(),
      routes: {
        AppRoutes.CATEGORIES_PAGE_MEALS: (context) => CategoriesPageMeals(),
        AppRoutes.MEAL_DETAIL_PAGE: (context) => MealDetailPage(),
        AppRoutes.SETTINGS: (context) => SettingsPage(),
      },
    );
  }
}
