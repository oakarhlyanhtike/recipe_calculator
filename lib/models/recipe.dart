class Recipe {
  String label;
  String imageUrl;
  int serving;
  List<Ingredient> ingredient;

  Recipe(
      {required this.label,
      required this.imageUrl,
      required this.serving,
      required this.ingredient});

  static List<Recipe> recipeData = [
    Recipe(
        label: 'Grilled Cheese',
        imageUrl: 'asset/Grilled_Cheese.png',
        serving: 1,
        ingredient: [
          Ingredient(
            quantity: 2,
            measure: 'slices',
            name: 'Cheese',
          ),
          Ingredient(
            quantity: 2,
            measure: 'slices',
            name: 'Bread',
          ),
        ]),
    Recipe(
        label: 'Chocolate Chip Cookies',
        imageUrl: 'asset/Chocolate_Chip_Cookies.jpg',
        serving: 24,
        ingredient: [
          Ingredient(
            quantity: 4,
            measure: 'cups',
            name: 'flour',
          ),
          Ingredient(
            quantity: 2,
            measure: 'cups',
            name: 'sugar',
          ),
          Ingredient(
            quantity: 0.5,
            measure: 'cups',
            name: 'chocolate chips',
          ),
        ]),
    Recipe(
        label: 'Pizza',
        imageUrl: 'asset/pizza.jpg',
        serving: 4,
        ingredient: [
          Ingredient(
            quantity: 1,
            measure: 'item',
            name: 'pizza',
          ),
          Ingredient(
            quantity: 1,
            measure: 'cup',
            name: 'pineapple',
          ),
          Ingredient(
            quantity: 8,
            measure: 'oz',
            name: 'ham',
          ),
        ]),
    Recipe(
        label: 'Spaghetti Meatballs',
        imageUrl: 'asset/spaghetti-meatballs.jpg',
        serving: 4,
        ingredient: [
          Ingredient(quantity: 1, measure: 'Box', name: 'Spaghetti'),
          Ingredient(
            quantity: 4,
            measure: '',
            name: 'Frozen Meatballs',
          ),
          Ingredient(
            quantity: 0.5,
            measure: 'jar',
            name: 'sauce',
          ),
        ]),
    Recipe(
        label: 'Taco Salad',
        imageUrl: 'asset/Taco-Salad.jpg',
        serving: 2,
        ingredient: [
          Ingredient(quantity: 1, measure: 'can', name: 'Tomato Soup')
        ]),
    Recipe(
        label: 'Tomato Soup',
        imageUrl: 'asset/tomato_soup.jpg',
        serving: 1,
        ingredient: [
          Ingredient(
            quantity: 4,
            measure: 'oz',
            name: 'nachos',
          ),
          Ingredient(
            quantity: 3,
            measure: 'oz',
            name: 'taco meat',
          ),
          Ingredient(
            quantity: 0.5,
            measure: 'cup',
            name: 'cheese',
          ),
          Ingredient(
            quantity: 0.25,
            measure: 'cup',
            name: 'chopped tomatoes',
          ),
        ]),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
      {required this.quantity, required this.measure, required this.name});
}
