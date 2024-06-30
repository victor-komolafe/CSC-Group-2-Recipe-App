import 'package:flutter/material.dart';
import 'package:group2_recipe_app/screens/all_recipe.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: h * .06,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 1),
            blurRadius: 2,
          )
        ],
      ),
      child: TextField(
        controller: search,
        style: TextStyle(
          fontSize: w * .04,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search for any dish of your choice  ?',
          hintStyle: TextStyle(
            fontSize: w * .03,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AllRecipe(recipe: search.text)));
            },
            child: Icon(
              Icons.search,
              color: Colors.deepOrangeAccent,
              size: w * .07,
            ),
          ),
        ),
      ),
    );
  }
}
