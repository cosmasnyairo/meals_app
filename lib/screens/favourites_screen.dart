import 'package:flutter/material.dart';

import '../models/meals.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meals> _favouriteMeals;

  FavouritesScreen(this._favouriteMeals);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You haven\'t  set any Favourite meals - Add some!',
        style: Theme.of(context).textTheme.body1,
      ),
    );
  }
}
