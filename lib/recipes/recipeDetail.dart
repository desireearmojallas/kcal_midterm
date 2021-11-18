import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_midterm/recipes/recipeUtils.dart';
import 'package:kcal_midterm/recipes/recipes.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({Key? key, required this.passedIndex}) : super(key: key);

  final int passedIndex;

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  List<Recipe> listRecipe = RecipeUtils.getRecipeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Recipe',
          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            //1st element
            Image(
              image: AssetImage(listRecipe[widget.passedIndex].imgPath),
              height: 200,
              width: 500,
              fit: BoxFit.cover,
            ),
            //2nd element
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfffefaef),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                      ),
                      Text(
                        listRecipe[widget.passedIndex].timeCook.toString() +
                            ' mins',
                      ),
                      Icon(Icons.people),
                      Text(
                        listRecipe[widget.passedIndex].servings.toString() +
                            ' serve',
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xfffe9386),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xfffe9386),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xfffe9386),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xfffe9386),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xfffe9386),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //3rd element
            Row(
              children: [
                Container(
                  width: 340,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      listRecipe[widget.passedIndex].recipeName,
                      style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xfff3f8f2),
                  child: Icon(
                    Icons.favorite_outline_outlined,
                    color: Color(0xff91c887),
                  ),
                ),
              ],
            ),
            //4th element
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Text(
                listRecipe[widget.passedIndex].recipeDesc,
                style: GoogleFonts.workSans(
            color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.normal),
              ),
            ),
            //5th element (kulang list view sa ingredients)
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Ingredients',
                style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: SizedBox(
                height: 250,
                width: 300,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        listRecipe[widget.passedIndex].listIngredients.length,
                    itemBuilder: (context, index) {
                      return buildIngredientCard(widget.passedIndex, index);
                    }),
              ),
            ),
            //6th element
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Directions',
                style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listRecipe[widget.passedIndex].directions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Text(
                            'Step ' + (index + 1).toString(),
                            style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Text(
                          listRecipe[widget.passedIndex].directions[index],
                          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),

      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(300, 70),
              primary: const Color(0xffff9386),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),),
            onPressed: () {
              print('Add to favorite');
            },
            child: Text('Add to favorite',
                style: TextStyle(
                  fontFamily: 'NUDs',
                  fontSize: 20  , 
                  color: Colors.white
                  ),
            ),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildIngredientCard(int recipeIndex, int ingredientIndex) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: Container(
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(listRecipe[recipeIndex]
                  .listIngredients[ingredientIndex]
                  .imgPath),
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                listRecipe[recipeIndex]
                    .listIngredients[ingredientIndex]
                    .ingredientName,
                style: GoogleFonts.workSans(
            color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text(
                listRecipe[recipeIndex]
                        .listIngredients[ingredientIndex]
                        .amount
                        .toString() +
                    ' ' +
                    listRecipe[recipeIndex]
                        .listIngredients[ingredientIndex]
                        .measurement,
                textAlign: TextAlign.center,
                style: GoogleFonts.workSans(
            color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}