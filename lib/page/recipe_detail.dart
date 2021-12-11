import 'package:flutter/material.dart';
import 'package:recipe_calculator/models/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  RecipeDetail({required this.recipe});

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _slideVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: AppBar(
        title: Text(
          widget.recipe.label + ' Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(widget.recipe.imageUrl)),
            SizedBox(
              height: 10.0,
            ),
            Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'INGREDIENTS',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: widget.recipe.ingredient.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredients = widget.recipe.ingredient[index];
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name : ${ingredients.name}',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 2.0),
                            ),
                            Text(
                              'Quantity amount : ${ingredients.quantity * _slideVal} ',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 2.0),
                            ),
                            Text(
                              'Measure : ${ingredients.measure}',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  wordSpacing: 2.0),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_slideVal * widget.recipe.serving} servings ',
              value: _slideVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _slideVal = newValue.round();
                });
              },
              activeColor: Colors.orange,
              inactiveColor: Colors.white,
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
