import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildlistTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
        leading: Icon(
          icon,
          size: 26,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
          ),
        ),
        onTap: tapHandler);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(11),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Theme.of(context).accentColor,
            ),
            child: Text(
              'Kenyan Meals!',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          buildlistTile(
            'Meals',
            Icons.fastfood,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildlistTile(
            'Filters',
            Icons.settings,
            () {
              Navigator.of(context).pushReplacementNamed('/filter-meals');
            },
          ),
        ],
      ),
    );
  }
}
