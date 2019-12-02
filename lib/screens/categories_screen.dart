import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,  //change to 400 for it to be better
          childAspectRatio: 2 / 2,    //change to 7/3
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
      
    );
  }
}
