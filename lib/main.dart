import 'package:flutter/material.dart';

import './screens/filters_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_details_screen.dart';
import './screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'RobotoCondensed',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontSize: 22,
              fontFamily: 'Raleway',
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 22,
              decoration: TextDecoration.underline,
              fontFamily: 'Raleway',
            )),
      ),
      //home: CategoryMealsScreen(),
      routes: {
        '/': (ctx) => TabsScreen(),
        '/filter-meals': (ctx) => FilterScreen(),
        '/category-meals': (ctx) => CategoryMealsScreen(),
        '/meal-details': (ctx) => MealDetailsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoryMealsScreen(),
        );
      },
    );
  }
}
