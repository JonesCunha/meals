import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/caterogy_model.dart';
import '../components/meal_item.dart';

class CategoriesPageMeals extends StatelessWidget {
  const CategoriesPageMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)?.settings.arguments as CategoryModel;
    final categoryMeals = dummy_meals.where(
      (meal) {
        return meal.categories.contains(category.id);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
