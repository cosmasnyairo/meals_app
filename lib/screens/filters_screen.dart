import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../main.dart';

class FilterScreen extends StatefulWidget {
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  FilterScreen(this.currentFilters, this.saveFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _GlutenFree = false;
  bool _Vegan = false;
  bool _Vegetarian = false;
  bool _LactoseFree = false;

  @override
  initState() {
    _GlutenFree = widget.currentFilters['gluten'];
    _LactoseFree = widget.currentFilters['lactose'];
    _Vegetarian = widget.currentFilters['vegeterian'];
    _Vegan = widget.currentFilters['vegan'];
    super.initState();
  }

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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _GlutenFree,
                'lactose': _LactoseFree,
                'vegeterian': _Vegetarian,
                'vegan': _Vegan,
              };
              widget.saveFilters(selectedFilters);
            },
          ),
        ],
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
                style: Theme.of(context).textTheme.body2),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    'Gluten Free', 'Only Gluten Free Meals.', _GlutenFree,
                    (updateValue) {
                  setState(() {
                    _GlutenFree = updateValue;
                  });
                }),
                _buildSwitchListTile(
                    'Lactose Free', 'Only Lactose Free Meals.', _LactoseFree,
                    (updateValue) {
                  setState(() {
                    _LactoseFree = updateValue;
                  });
                }),
                _buildSwitchListTile(
                    'Vegeterian', 'Only Vegeterian Meals.', _Vegetarian,
                    (updateValue) {
                  setState(() {
                    _Vegetarian = updateValue;
                  });
                }),
                _buildSwitchListTile('Vegan', 'Only Vegan Meals.', _Vegan,
                    (updateValue) {
                  setState(() {
                    _Vegan = updateValue;
                  });
                }),
                RaisedButton(
                  child: Text('Save'),
                  padding: EdgeInsets.all(10),
                  color: Theme.of(context).primaryColor,
                  
                  onPressed: () {
                    final selectedFilters = {
                      'gluten': _GlutenFree,
                      'lactose': _LactoseFree,
                      'vegeterian': _Vegetarian,
                      'vegan': _Vegan,
                    };
                    widget.saveFilters(selectedFilters);
                  },
                )
              ],
             ),
          ),
        ],
      ),
    );
  }
}
