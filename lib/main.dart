import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

import './screens/filters_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_details_screen.dart';
import './screens/tabs_screen.dart';
import './dummy_data.dart';
import './models/meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegeterian': false,
    'vegan': false,
  };
  List<Meals> _availableMeals = DUMMY_Meals;
  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_Meals.where((meal) {
        if (_filters['gluten'] && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegeterian'] && !meal.isVegetarian) {
          return false;
        }
        if (_filters['vegan'] && !meal.isVegan) {
          return false;
        }
        return true;
      }).toList();
    });
  }

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
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
              fontSize: 22,
              fontFamily: 'Raleway',
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
        '/filter-meals': (ctx) => FilterScreen(_filters,_setFilters),
        '/category-meals': (ctx) => CategoryMealsScreen(_availableMeals),
        '/meal-details': (ctx) => MealDetailsScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => TabsScreen(),
        );
      },
    );
  }
}
