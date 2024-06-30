import 'package:flutter/material.dart';
import 'package:group2_recipe_app/components/bottom_nav_bar.dart';
import 'package:group2_recipe_app/components/recipe_category.dart';
import 'package:group2_recipe_app/screens/home_screen.dart';
import 'package:group2_recipe_app/screens/search_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(
          onItemTap: (index) {
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut);
            setState(() {
              currentIndex = index;
            });
          },
          selectedItem: currentIndex,
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomePage(),
            RecipeCategory(),
            SearchScreen(),
            // Center(
            //   child: Text('Page 4'),
            // ),
            // Center(
            //   child: Text('Page 5'),
            // ),
          ],
        ));
  }
}
