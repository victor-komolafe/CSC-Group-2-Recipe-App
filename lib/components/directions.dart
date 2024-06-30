import 'package:flutter/material.dart';
import 'package:group2_recipe_app/components/custom_app_bar.dart';

class RecipeDirections extends StatelessWidget {
  final String recipe;
  const RecipeDirections({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: recipe, back: true),
    );
  }
}
