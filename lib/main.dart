import 'package:flutter/material.dart';


import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        canvasColor: Color.fromRGBO(164, 173, 191, 1),
        fontFamily: 'RobotoCondensed',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(fontSize: 20, fontFamily: 'Raleway')),
      ),
      home: CategoriesScreen(),
      routes:  {
        '/category-meals' : (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
