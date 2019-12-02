import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _GlutenFree = false;
  var _Vegan = true;
  var _Vegetarian = true;
  var _LactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: MainDrawer(),
        elevation: 1,
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            child: Text('Adjust The Meal Selection',
            style: Theme.of(context).textTheme.body1),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                SwitchListTile(
                  title: Text('Gluten Free'),
                  value: _GlutenFree,
                  subtitle: Text('Only Gluten Free Meals'),
                  onChanged: (newvalue){
                    setState(() {
                      _GlutenFree=newvalue;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
