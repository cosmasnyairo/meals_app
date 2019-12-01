import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kenya Meals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,  //change to 400 for it to be better
          childAspectRatio: 3 / 2,    //change to 7/3
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map(
              //maps each category item to the category item class to define it's look
              (catData) => CategoryItem(
                //gets category from the category item class
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        //maps it into a list
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   color: Theme.of(context).primaryColor,
      //   backgroundColor: null,
      //   height: 60,
      //   items: <Widget>[
      //     Icon(Icons.menu, size: 30),
      //     Icon(Icons.star, size: 30),
      //     Icon(Icons.settings, size: 30),
      //   ],
      //   animationCurve: Curves.easeIn,
      //   animationDuration: Duration(milliseconds: 600),
      // ),
    );
  }
}
