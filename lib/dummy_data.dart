import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meals.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Foreign',
    color: Colors.brown,
    imageUrl: 'https://cdn.americanprogress.org/content/uploads/2019/11/20082438/SozanForeignSpendingReport.jpg',
  ),
  Category(
    id: 'c2',
    title: 'Breakfast',
    color: Colors.yellow,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTqaRbpHl25gGIgaW-xGp79aRTf-l8lRBLL9QvFV-2H3dMpjnPq',
  ),
  Category(
    id: 'c3',
    title: 'Snacks',
    color: Colors.grey,
    imageUrl: 'data:image/jpeg;base64,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',
  ),
  Category(
    id: 'c4',
    title: 'Lunch',
    color: Colors.teal,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQvSEYLwt8z2OcrBqOjH0GeBRzYYYgeqURqXH2A8Vd8QWDrc9gR',
  ),
  Category(
    id: 'c5',
    title: 'Dinner',
    color: Colors.blueGrey,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQKabNNzDvpU0PebJGKvObJSCZAb-MCnCQoLfJ18ogDlF4JUu3E',
  ),
  Category(
    id: 'c6',
    title: 'Local',
    color: Colors.brown,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQkzyVbXOnQHO9CqR2LnNOKWcjrHKzrwtfU3AAjp9ilCsbx4-Tn',
  ),
  Category(
    id: 'c7',
    title: 'Vegetables',
    color: Colors.yellow,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSNqdk8yaivjthRhrPl5MPkFJaKOTQJj5jtXCI5XrsqD9dEjnnX',
  ),
  Category(
    id: 'c8',
    title: 'Beverages',
    color: Colors.brown,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQpVMK_6FqgJHEEOmsUa2Y-bj6QvoebsIAK7ZZ8qvVtNU3xuaWI',
  ),
  Category(
    id: 'c9',
    title: 'Salads',
    color: Colors.yellow,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR0o-RgwELnZpae9VmwQU975Ue2me5u4lDu2_c7kI-e7sRvmjRN',
  ),
  Category(
    id: 'c10',
    title: 'Holiday Specials',
    color: Colors.green,
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT_q9PUk9joKp67dafrKCyyPfuGfUgES8QmUcjGZMIAv4Vhim5z',
  ),
];

const DUMMY_Meals = const [
  Meals(
    id: 'm1',
    categories: [
      'c4',
      'c5',
      'c6',
    ],
    title: 'Ugali',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'http://www.trainingarunner.com/wp-content/uploads/2015/01/ugali-830x623.jpg',
    duration: 20,
    ingredients: ['1 cup milk', '1¼ cups cornmeal', '1 cup water'],
    steps: [
      'Pour the milk into a mixing bowl. Slowly add ¾ cup of the cornmeal and whisk constantly into a paste.'
          'Heat the water in a medium saucepan to boiling.'
          'Using a wooden spoon, stir cornmeal and milk paste mixture into the boiling water. Reduce heat to low.'
          'Slowly add the remaining ½ cup of cornmeal, stirring constantly. The mixture should be smooth with no lumps.'
          'Cook for about 3 minutes. When the mixture begins to stick together and pull away from the sides of the pan, remove from heat.'
          'Pour mixture into a greased serving bowl and allow to cool.'
          'Serve at room temperature as a side dish to meat and vegetables.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meals(
    id: 'm2',
    categories: [
      'c1',
      'c2',
      'c4',
      'c5',
    ],
    title: 'Sphagetti Sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC1331iHeJ_vWZDs437Yv5tkUREuUcR4S8X1-0Na10DR634vA7',
    duration: 10,
    ingredients: [
      '1 Tbsp olive oil',
      '1 lb 85% lean ground beef',
      'Salt and freshly ground black pepper',
      '1 small yellow onion, (finely chopped (1 cup))',
      '3 garlic cloves, (minced (1 Tbsp))'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meals(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ], 
    title: 'Classic Hamburger',
    affordability: Affordability.Pricy,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meals(
    id: 'm4',
    categories: ['c3', 'c10', 'c1',],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meals(
    id: 'm5',
    categories: [
      'c4',
      'c5',
      'c9',
      'c6',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meals(
    id: 'm6',
    categories: [
      'c5'
      'c6',
      'c7',
    ],
    title: 'Sukuma Wiki',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '2 Tablespoons oil',
      '1 onion, chopped',
      '1 tomato, chopped',
      'One bunch sukuma (kale or collard greens), chopped',
      '½ cup water',
      'Salt'
    ],
    steps: [
      'Heat oil in a frying pan and add the onions. Sauté about 2 to 4 minutes.',
      'Add tomato and greens and sauté about 1 minute.',
      'Add ½ cup water and then add salt to taste. Let the mixture simmer until the sukuma is tender',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meals(
    id: 'm7',
    categories: [
      'c3',
      'c2',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meals(
    id: 'm8',
    categories: [
      'c7',
      'c1',
      'c10'
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricy,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meals(
    id: 'm9',
    categories: [
      'c3',
      'c2',
      'c10',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meals(
    id: 'm10',
    categories: [
      'c1'
      'c2',
      'c5',
      'c9',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meals(
    id: 'm11',
    categories: [
      'c8',
      'c2',
    ],
    title: 'Tea',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://assets.epicurious.com/photos/579909083a12dd9d56024018/6:4/w_620%2Ch_413/spiced-milk-tea-masala-chai.jpg',
    duration: 30,
    ingredients: [
      '1 cup of water',
      '1–2 tea bags',
      '2–3 teaspoons Sugar, Honey',
      '1 cup milk of your choice',
    ],
    steps: [
      'place in a small pot the 1 cup of water',
      'Add the sugar to the water',
      'Bring to a boil. reduce the heat and  milk. Bring to a simmer ',
      'Sweeten, taste, strain into a glass',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meals(
    id: 'm12',
    categories: [
      'c8',
      'c2',
    ],
    title: 'Kahawa',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT1yu0pfPg3hyYaEMaWFE_98gIoUzuAxzgyxp94A-gRrqRKR1Ey',
    duration: 30,
    ingredients: [
      '1 cup fresh water',
      '1/2 tspn of Coffee',
      '2 tspn',
    ],
    steps: [
      'Heat water to its boiling point',
      'Add coffee and water to you\'re coffee cup.',
      'Stir well and add sugar to taste',
      'Serve will still hot, and enjoy',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
