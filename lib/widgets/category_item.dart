//general look of  category item
import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color,);

  void selectCategory(BuildContext ctx) {
    //goes to the page that has the /
    Navigator.of(ctx).pushNamed(
      '/category-meals',
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: color,
      borderRadius: BorderRadius.circular(10),
      child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                color.withOpacity(0.5),
                color, //transparent value of the color
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child:
              Text(
                title,
                style: Theme.of(context).textTheme.title,
              ),
                
          ),
    );
  }
}
