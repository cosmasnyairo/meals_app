import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class FilterScreen extends StatelessWidget {
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
      body: Center(
        child: Text('Filters'),
      ),
      
    );
  }
}
