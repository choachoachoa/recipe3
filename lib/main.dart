import 'package:flutter/material.dart';
import 'package:recipe3/recipe.dart';
import 'package:recipe3/recipe_detail.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);


// 주문서를 Recipe class 공장으로 넣는 것


 //Array가 각각 Recipe의 값이 들어간다




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is the Recipes.'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(onTap: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context){
              // TODO: Replace return with return RecipeDetail()
                  return RecipeDetail(
                    recipe: recipes[index],
                  );
            }));
          },child: buildRecipeCard(recipes[index]));
    },
        itemCount: recipes.length,
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe){
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl),
            SizedBox(
              height: 10,
            ),
            Text(recipe.label,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino'),
            )
          ],
        ),
      ),
    );
  }
}
