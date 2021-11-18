class FoodData {
  String name;
  String icon;
  String altName;
  String text;
  String text2;
  String image;
  String image2;

  FoodData({
    required this.name,
    required this.icon,
    required this.altName,
    required this.text,
    required this.text2,
    required this.image,
    required this.image2,
  });
}

class FoodDetails {
  static List<FoodData> getFoodData() {
    return [
      FoodData(
        name: 'Cookies',
        icon: 'assets/cookie.png',
        altName: 'Biscuit',
        text:
        'A cookie is a baked or cooked snack or dessert that is typically small, flat and sweet. It usually contains flour, sugar, egg, and some type of oil, fat, or butter. It may include other ingredients such as raisins, oats, chocolate chips, nuts, etc.',
        text2:
        'In most English-speaking countries except for the United States, crunchy cookies are called biscuits. Many Canadians also use this term. Chewier biscuits are sometimes called cookies even in the United Kingdom. Some cookies may also be named by their shape, such as date squares or bar.',
        image: 'assets/cookie1.jpg',
        image2: 'assets/cookie2.jpg',
      ),
      FoodData(
        name: 'Burger',
        icon: 'assets/burger.png',
        altName: 'Hamburger',
        text:
        'A hamburger (or burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.',
        text2:
        'Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chilis; condiments such as ketchup, mustard, mayonnaise, relish, or a "special sauce", often a variation of Thousand Island dressing; and are frequently placed on sesame seed buns.',
        image: 'assets/burger1.jpg',
        image2: 'assets/burger2.jpg',
      ),
      FoodData(
        name: 'Cakes',
        icon: 'assets/cakes.png',
        altName: 'Tart, Gateau',
        text:
        'Cake is a form of sweet food made from flour, sugar, and other ingredients, that is usually baked. In their oldest forms, cakes were modifications of bread, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other desserts such as pastries, meringues, custards, and pies.',
        text2:
        'The most commonly used cake ingredients include flour, sugar, eggs, butter or oil or margarine, a liquid, and a leavening agent, such as baking soda or baking powder. Common additional ingredients and flavourings include dried, candied, or fresh fruit, nuts, cocoa, and extracts such as vanilla, with numerous substitutions for the primary ingredients.',
        image: 'assets/cakes1.jpg',
        image2: 'assets/cakes2.jpg',
      ),
      FoodData(
        name: 'Pizza',
        icon: 'assets/pizza.png',
        altName: 'Pie',
        text:
        'Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven',
        text2:
        'In Italy, pizza served in formal settings, such as at a restaurant, is presented unsliced, and is eaten with the use of a knife and fork. In casual settings, however, it is cut into wedges to be eaten while held in the hand.',
        image: 'assets/pizza1.jpg',
        image2: 'assets/pizza2.jpg',
      ),
      FoodData(
        name: 'Hotdog',
        icon: 'assets/hotdog.png',
        altName: 'Sausage',
        text:
        'A hotdog is a food consisting of a grilled or steamed sausage served in the slit of a partially sliced bun.The term hot dog can also refer to the sausage itself. The sausage used is a wiener (Vienna sausage) or a frankfurter (Frankfurter Würstchen, also just called frank). The names of these sausages also commonly refer to their assembled dish.Some consider it to be a sandwich.',
        text2:
        'Hotdog preparation and condiments vary worldwide. Typical condiments include mustard, ketchup, mayonnaise, relish, and cheese sauce, and common garnishes include onions, sauerkraut, jalapeños, chili, grated cheese, coleslaw, bacon, and olives. Hot dog variants include the corn dog and pigs in a blanket.',
        image: 'assets/hotdog1.jpg',
        image2: 'assets/hotdog2.jpg',
      ),
      FoodData(
        name: 'Fries',
        icon: 'assets/french-fries.png',
        altName: 'French fries',
        text:
       'French fries or simply fries are batonnet or allumette-cut deep-fried potatoes, originating from either Belgium or France. They are prepared by cutting the potato into even strips, then drying and frying it, usually in a deep fryer. Most french fries are produced from frozen Russet potatoes.',
        text2:
        'French fries are served hot, either soft or crispy, and are generally eaten as part of lunch or dinner or by themselves as a snack, and they commonly appear on the menus of diners, fast food restaurants, pubs, and bars. They are often salted and may be served with ketchup, vinegar, mayonnaise, tomato sauce, or other local specialties. Fries can be topped more heavily, as in the dishes of poutine or chili cheese fries. Chips can be made from sweet potatoes instead of potatoes. A baked variant, oven chips, uses less oil or no oil',
        image: 'assets/fries1.jpg',
        image2: 'assets/fries2.jpg',
      ),
      FoodData(
        name: 'Donuts',
        icon: 'assets/donut.png',
        altName: 'Doughnut',
        text:
        'A doughnut or donut is a type of leavened fried dough. It is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors. Doughnut is the traditional spelling, while donut is the simplified version; the terms are often used interchangeably.',
        text2:
        'Doughnuts are usually deep fried from a flour dough, but other types of batters can also be used. Various toppings and flavorings are used for different types, such as sugar, chocolate or maple glazing. Doughnuts may also include water, leavening, eggs, milk, sugar, oil, shortening, and natural or artificial flavors.',
        image: 'assets/donuts1.jpg',
        image2: 'assets/donuts2.jpg',
      ),
    ];
  }

  FoodDetails();
}
