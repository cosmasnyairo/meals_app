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
  List<Meals> _favouriteMeals = [];
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

  void _toggleFavourite(String mealId) {
    final existingIndex =
        _favouriteMeals.indexWhere((meal) => meal.id == mealId);

    if (existingIndex >= 0) {
      setState(() {
        _favouriteMeals.removeAt(existingIndex);
      }); 
    } else {
      setState(() {
        _favouriteMeals
            .add(DUMMY_Meals.firstWhere((meal) => meal.id == mealId));
      });
    }
  }

  bool _isMealFavourite(String id){
    return _favouriteMeals.any((test)=> test.id==id);
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
              fontFamily: 'Raleway',
            )),
      ),
      //home: CategoryMealsScreen(),
      routes: {
        '/': (ctx) => TabsScreen(_favouriteMeals),
        '/filter-meals': (ctx) => FilterScreen(_filters, _setFilters),
        '/category-meals': (ctx) => CategoryMealsScreen(_availableMeals),
        '/meal-details': (ctx) => MealDetailsScreen(_toggleFavourite,_isMealFavourite),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => TabsScreen(_favouriteMeals),
        );
      },
    );
  }
}
