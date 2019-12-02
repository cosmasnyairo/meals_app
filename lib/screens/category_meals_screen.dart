//shows meals under for each category
import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../dummy_data.dart';
import '../models/meals.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meals> categoryMeals;
  bool _loadedInitData = false;

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      categoryMeals = DUMMY_Meals.where((meal) {
        return meal.categories.contains(categoryId); 
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            removeItem: _removeMeal,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
