import 'package:flutter/material.dart';
import 'package:meals/pages/meal_detail_page.dart';
import 'package:meals/pages/tabs_pages.dart';
import 'pages/home_page.dart';
import 'pages/categories_page_meals.dart';
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
        primaryColor: Colors.black,
        cardColor: Colors.amberAccent,
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
      home: TabsPages(),
      routes: {
        // AppRoutes.HOME:(context) => MyHomePage(),
        AppRoutes.CATEGORIES_PAGE_MEALS: (context) => CategoriesPageMeals(),
        AppRoutes.MEAL_DETAIL_PAGE: (context) => MealDetailPage()
      },
    );
  }
}
