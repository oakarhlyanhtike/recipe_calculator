import 'package:flutter/material.dart';
import 'package:recipe_calculator/models/recipe.dart';
import 'package:recipe_calculator/page/recipe_detail.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipe Calulator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: Recipe.recipeData.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RecipeDetail(recipe: Recipe.recipeData[index]);
                  }));
                },
                child: buildRecipeCard(Recipe.recipeData[index]));
          }),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Container(
    margin: EdgeInsets.all(9.0),
    child: Card(
      elevation: 10.0,
      shadowColor: Colors.orangeAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(recipe.imageUrl),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              recipe.label,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.deepOrangeAccent,
                  letterSpacing: 0.5,
                  fontFamily: 'Righteous'),
            )
          ],
        ),
      ),
    ),
  );
}
