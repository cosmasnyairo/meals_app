import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meals.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Foreign',
    color: Colors.brown,
  ),
  Category(
    id: 'c2',
    title: 'Breakfast',
    color: Colors.yellow,
  ),
  Category(
    id: 'c3',
    title: 'Snacks',
    color: Colors.grey,
  ),
  Category(
    id: 'c4',
    title: 'Lunch',
    color: Colors.teal,
  ),
  Category(
    id: 'c5',
    title: 'Dinner',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c6',
    title: 'Local',
    color: Colors.brown,
  ),
  Category(
    id: 'c7',
    title: 'Vegetables',
    color: Colors.yellow,
  ),
  Category(
    id: 'c8',
    title: 'Beverages',
    color: Colors.brown,
  ),
  Category(
    id: 'c9',
    title: 'Salads',
    color: Colors.yellow,
  ),
  Category(
    id: 'c10',
    title: 'Holiday Specials',
    color: Colors.green,
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSnIg_chZ_lFBQknwH_56aPBsOoW4sthf_E2M1I9HXWhzgr-bsV',
    duration: '20',
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
    duration: '10',
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
    duration: '45',
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
    categories: [
      'c3',
      'c10',
      'c1',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: '60',
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
    duration: '240',
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
      'c5',
      'c4',
      'c6',
      'c7',
    ],
    title: 'Sukuma Wiki',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRFw2bboWP9eNo0S6tBB8iGbDwekVuSeYK-gidaOpGXHkXUH9qz',
    duration: '5',
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
    duration: '20',
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
    categories: ['c7', 'c1', 'c10'],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricy,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: '35',
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
    duration: '45',
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
    duration: '30',
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
    duration: '30',
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
    duration: '30',
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
