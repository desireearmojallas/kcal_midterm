import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_midterm/food/food.dart';
import 'package:kcal_midterm/food/food_details.dart';

class FoodView extends StatefulWidget {
  const FoodView({Key? key, required this.passedIndex}) : super(key: key);

  final int passedIndex;

  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  List<FoodData> listFoodData = FoodDetails.getFoodData(

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Foods",
          style: GoogleFonts.workSans(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0, ),


      body: ListView(
        children: [
          buildGridItem(widget.passedIndex),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text(
              listFoodData[widget.passedIndex].text,
              style: GoogleFonts.workSans(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text(
              listFoodData[widget.passedIndex].text2,
             style: GoogleFonts.workSans(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gallery: ',
                  style: GoogleFonts.workSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                        child: Image.asset(
                          listFoodData[widget.passedIndex].image,
                          width: 150, height: 250, fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                        child: Image.asset(
                          listFoodData[widget.passedIndex].image2,
                          width: 150, height: 250, fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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

  Widget buildGridItem(int index) => Padding(
    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.yellow[50],
        borderRadius: BorderRadius.circular(15),
      ),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(listFoodData[index].icon),
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listFoodData[index].name,
                    style: GoogleFonts.workSans(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF998250),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Alternative Names: " + listFoodData[index].altName,
                    style: GoogleFonts.workSans(
                      fontSize: 12,
                      color: const Color(0xFF4D4129),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}