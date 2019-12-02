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

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      onChanged: updateValue,
      value: currentValue,
    );
  }

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
                _buildSwitchListTile(
                  'Gluten Free',
                  'Only Gluten Free Meals.',
                  _GlutenFree,
                  (updateValue){
                    setState(() {
                      _GlutenFree =updateValue;
                    });
                  }
                ),
                _buildSwitchListTile(
                  'Lactose Free',
                  'Only Lactose Free Meals.',
                  _LactoseFree,
                  (updateValue){
                    setState(() {
                      _LactoseFree =updateValue;
                    });
                  }
                ),
                _buildSwitchListTile(
                  'Vegeterian',
                  'Only Vegeterian Meals.',
                  _Vegetarian,
                  (updateValue){
                    setState(() {
                      _Vegetarian =updateValue;
                    });
                  }
                ),
                _buildSwitchListTile(
                  'Vegan',
                  'Only Vegan Meals.',
                   _Vegan,
                  (updateValue){
                    setState(() {
                      _Vegan =updateValue;
                    });
                  }
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
