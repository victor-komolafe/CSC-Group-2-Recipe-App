import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:group2_recipe_app/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group2_recipe_app/screens/home.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
          child: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                height: h * .8,
                width: w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ImagesPath.onBoardingBackground),
                  fit: BoxFit.cover,
                )),
              )),
          Container(
            height: h * .9,
            width: w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImagesPath.chefs), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              width: w,
              color: RecipeColors.primaryColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  'Group 2 Recipe App',
                  style: GoogleFonts.limelight(
                      textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: h * .243,
                width: w,
                decoration: const BoxDecoration(
                  color: RecipeColors.primaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: h * .032),
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Its time to cook!",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: w * .06,
                            ),
                          ),
                          SizedBox(
                            height: w * .02,
                          ),
                          Text(
                            "Make your best meals right from Home!",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: w * .04,
                            ),
                          ),
                          SizedBox(
                            height: w * .02,
                          ),
                          SizedBox(
                              width: w * .8,
                              child: ElevatedButton(
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Home()));
                                },
                              ))
                        ]),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}
