import 'package:flutter/material.dart';
import 'package:group2_recipe_app/components/ingredient_item.dart';

class IngredientList extends StatelessWidget {
  final List<dynamic> ingredients;

  const IngredientList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const ScrollPhysics(
          parent: NeverScrollableScrollPhysics(),
        ),
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          var quantity = ingredients[index]['quantity'];
   
          return IngredientItem(
            quantity: quantity.toString(),
            measure:
                ingredients[index]['measure'] ?? '', //using ?? for nullsafety
            food: ingredients[index]['food'] ?? '',
            imageUrl: ingredients[index]['image'] ?? '',
          );
        });
  }
}
