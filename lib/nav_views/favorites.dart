import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_midterm/food/food.dart';
import 'package:kcal_midterm/recipes/recipeFound.dart';

class Favorites extends StatefulWidget {
  const Favorites({ Key? key }) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Favorites",
          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
body: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
            children:[
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFf4f9f3),
                  borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: TabBar
                 (
                  unselectedLabelColor: const Color(0xFF91c789),
                  labelColor: Colors.white,
                  indicator: BoxDecoration(color: const Color(0xFF91c789),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  tabs: [
                    SizedBox(
                      height: 60,
                      child: Tab (
                        child: Text(
                          'Foods', 
                          style: GoogleFonts.workSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 60,
                      child: Tab (
                        child: Text(
                          'Recipes', 
                          style: GoogleFonts.workSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

              ]),
            )
            ),
            SizedBox(
              height: 400,
              child: TabBarView(
                children: [
                    FoodPage(),
                    RecipeFound(),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
     ),
    );
  }
}