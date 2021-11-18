import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kcal_midterm/food/food_view.dart';

class FoodPage extends StatefulWidget {

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List<FoodInfo> listFoodInfo = FoodPageData.getFoodInfo();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2.5 / 1,
        children: List.generate(
          listFoodInfo.length, (index) {
            return GestureDetector(
              onTap: () { Navigator.push(context, MaterialPageRoute(
                    builder: (context) => FoodView(passedIndex: index),),);},
              child: buildGridItem(index),
            );
          },
        ),
      ),
    );
  }

  Widget buildGridItem(int index) =>
      Container(
        decoration: BoxDecoration(
        color: const Color(0xFFFEFAEF),
        borderRadius: BorderRadius.circular(15),
    ),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(image: AssetImage(listFoodInfo[index].icon), width: 40, height: 40),
        Text(listFoodInfo[index].name,
            style: GoogleFonts.workSans(fontSize: 18, color: const Color(0xFF4D4127))),
        const Icon(Icons.arrow_forward_ios_rounded),
      ],
    ),
  );
}


class FoodInfo {
  String name;
  String icon;

  FoodInfo({
    required this.name,
    required this.icon,
  });
}

class FoodPageData {
  static List<FoodInfo> getFoodInfo() {
    return [
      FoodInfo(
        name: 'Cookies',
        icon: 'assets/cookie.png',
      ),
      FoodInfo(
        name: 'Burger',
        icon: 'assets/burger.png',
      ),
      FoodInfo(
        name: 'Cakes',
        icon: 'assets/cakes.png',
      ),
      FoodInfo(
        name: 'Pizza',
        icon: 'assets/pizza.png',
      ),
      FoodInfo(
        name: 'Hotdog',
        icon: 'assets/hotdog.png',
      ),
      FoodInfo(
        name: 'Fries',
        icon: 'assets/french-fries.png',
      ),
      FoodInfo(
        name: 'Donuts',
        icon: 'assets/donut.png',
      ),
    ];
  }
}