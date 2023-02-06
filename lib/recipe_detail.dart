import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe3/recipe.dart';
// import 'package:flutter/material.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe.label??"no title"),),
      body: Column(
        children: [
          SizedBox(width:double.infinity,
              height: 300,
              child: Image.asset(recipe.imageUrl)),
          SizedBox(
            height: 10,
          ),
          Text(recipe.label,
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino'),
          ),
          Expanded( //column이나 row 위젯안에서만 쓸 수 있는 Expanded
            child: ListView.builder(
              shrinkWrap: true, // listview가 1개면 1개, 2개면 2개만큼의 사이즈를 잡음
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {

                Ingredient ingredient = recipe.ingredients[index];

              return Text("${ingredient.quantity} ${ingredient.measure} ${ingredient.name}");
            },
              itemCount: recipe.ingredients.length,
            ),
          )
        ],
      ),
    );
  }
}
