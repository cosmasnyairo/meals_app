import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import './categories_screen.dart';
import './favourites_screen.dart';
import '../models/meals.dart';

class TabsScreen extends StatefulWidget {
  final List<Meals> _favouriteMeals;

  TabsScreen(this._favouriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  @override
  void initState() {
    _pages = [
      {
        'page': CategoriesScreen(),
        'title': 'Kenyan Meals',
      },
      {
        'page': FavouritesScreen(widget._favouriteMeals),
        'title': 'Favourite Meals',
      },
    ];

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'],
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
        elevation: 1,
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.fastfood, color: Theme.of(context).accentColor),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.favorite, color: Theme.of(context).accentColor),
            title: Text('Favourites'),
          ),
        ],
      ),
    );
  }
}
