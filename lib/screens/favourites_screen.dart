import 'package:flutter/material.dart';
import 'package:meals_app/widgets/meal_item.dart';

import '../models/meals.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meals> _favouriteMeals;

  FavouritesScreen(this._favouriteMeals);
  @override
  Widget build(BuildContext context) {
    return _favouriteMeals.isEmpty ? Center(
      child: Text(
        'You haven\'t  set any Favourite meals - Add some!',
        style: Theme.of(context).textTheme.body1,
      ),
    )
    :
    ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _favouriteMeals[index].id,
            title: _favouriteMeals[index].title,
            affordability: _favouriteMeals[index].affordability,
            complexity: _favouriteMeals[index].complexity,
            imageUrl: _favouriteMeals[index].imageUrl,
            duration: _favouriteMeals[index].duration, 
          );
        },
        itemCount: _favouriteMeals.length,
      );
  }
}
