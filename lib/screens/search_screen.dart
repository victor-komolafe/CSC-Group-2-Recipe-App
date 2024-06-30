import 'package:flutter/material.dart';
import 'package:group2_recipe_app/components/custom_app_bar.dart';
import 'package:group2_recipe_app/components/text_feild.dart';
import 'package:group2_recipe_app/constants/search_tags.dart';
import 'package:group2_recipe_app/screens/all_recipe.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: CustomAppBar(
          title: 'Search',
          back: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFeildWidget(),
            SizedBox(
              height: h * .04,
            ),
            Text(
              'Search Tags',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * .06),
            ),
            Wrap(
              spacing: 8,
              children: tags.map((label) {
                return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllRecipe(recipe: label)));
                    },
                    child: Text(label));
              }).toList(),
            )
          ],
        ));
  }
}
