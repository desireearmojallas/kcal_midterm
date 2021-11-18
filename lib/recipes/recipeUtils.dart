import 'package:kcal_midterm/recipes/ingredients.dart';
import 'package:kcal_midterm/recipes/recipes.dart';

class RecipeUtils {
  static List<Recipe> getRecipeData() {
    return [
      Recipe(
        imgPath: 'assets/fish.jpeg',
        recipeName: 'Fish Steaks With Veggie Sauce',
        timeCook: 45,
        servings: 4,
        shortDesc:
            'Boneless with stakes with crispy fried sauce and toppings.',
        recipeDesc:
            "Grilled Fish Steak is a delicious Mediterranean recipe made by marinating fish fillets in garlic, green chillies and a blend of spices. Tender fish fillets smeared in a simple marinade of lime and salt, seared golden. Delicious, isn't it?",
        listIngredients: [
          Ingredients(
            ingredientName: 'Medium Fish Fillets',
            amount: 10,
            measurement: '',
            imgPath: 'assets/recipes/fish-fillet.png',
          ),
          Ingredients(
            ingredientName: 'Lemon Juice',
            amount: 3,  
            measurement: 'tbsp',
            imgPath: 'assets/recipes/lemon-juice.png',
          ),
          Ingredients(
            ingredientName: 'Sunflower Oil',
            amount: 1 / 2,
            measurement: 'tbsp',
            imgPath: 'assets/recipes/sunflower-oil.png',
          ),
          Ingredients(
            ingredientName: 'Coriander Powder',
            amount: 1 / 2,
            measurement: 'tbsp',
            imgPath: 'assets/recipes/coriander-powder.png',
          ),
          Ingredients(
            ingredientName: 'Medium Green Chilli',
            amount: 2,
            measurement: '',
            imgPath: 'assets/recipes/green-chilli.png',
          ),
          Ingredients(
            ingredientName: 'Powdered Turmeric',
            amount: 1 / 2,
            measurement: 'tsp',
            imgPath: 'assets/recipes/turmeric-powder.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1 / 2,
            measurement: 'tsp',
            imgPath: 'assets/recipes/salt.png',
          ),
          Ingredients(
            ingredientName: 'Garlic',
            amount: 4,
            measurement: 'cloves',
            imgPath: 'assets/recipes/garlic.png',
          ),
          Ingredients(
            ingredientName: 'Coriander Leaves',
            amount: 2,
            measurement: 'handful',
            imgPath: 'assets/recipes/coriander-leaves.png',
          ),
          Ingredients(
            ingredientName: 'Dill Leaves',
            amount: 1,
            measurement: 'handful',
            imgPath: 'assets/recipes/dill-leaves.png',
          ),
        ],
        directions: [
          'To prepare this amazing non-vegetarian recipe, take the fish fillets and massage it gently with oil, keep aside in a plate.',
          'Grind together the garlic, turmeric powder, red chilli powder, green chillies, dill leaves, coriander powder, and salt. Add oil to it and grind to form a paste. Rub this all over the fish fillets and keep aside to marinate for 15 to 30 minutes.',
          'Grill the marinated fish on a preheated grill or oven till golden and crisp on both sides or for 5 minutes. Transfer to a plate.',
          'Pour the lime juice and chilli flakes, and serve with chutney or salad of your choice. Make sure you rate this recipe, try it out and let us know in the comments how it turned out to be.',
        ],
      ),
      Recipe(
        imgPath: 'assets/mango-float.jpeg',
        recipeName: 'Mango Float',
        timeCook: 5,
        servings: 10,
        shortDesc:
            'A Filipino icebox cake dessert made with layers of ladyfingers or graham crackers, whipped cream, condensed milk, and ripe carabao mangoes.',
        recipeDesc:
            'Made by creating layers of graham, cream, and mangoes using a big square or rectangle dish. Normally served chilled or even frozen. It is then cut into smaller squares before serving.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Heavy Cream',
            amount: 2,
            measurement: 'cups',
            imgPath: 'assets/recipes/heavy-cream.png',
          ),
          Ingredients(
            ingredientName: 'Can Sweetened Condensed Milk',
            amount: 14,
            measurement: 'oz',
            imgPath: 'assets/recipes/condensed-milk.png',
          ),
          Ingredients(
            ingredientName: 'Pure Vanilla Extract',
            amount: 1 / 2,
            measurement: 'tsp',
            imgPath: 'assets/recipes/vanilla-extract.png',
          ),
          Ingredients(
            ingredientName: 'Graham Cracker Crumbs',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/recipes/graham-crackers.png',
          ),
          Ingredients(
            ingredientName: 'Diced Ripe Mangoes',
            amount: 3,
            measurement: '',
            imgPath: 'assets/recipes/diced-mango.png',
          ),
        ],
        directions: [
          'Combine the cream, sweetened condensed milk and vanilla extract in a large bowl. Beat with a hand mixer until double in volume, about 4 minutes.',
          'Spread a scant 2 cups of cream in an 8-inch square baking dish, followed by 1/2 cup graham cracker crumbs and a third of the mangoes. Continue alternating layers for a total of 9 layers, ending with mango. Chill at least 8 hours and up to overnight.',
        ],
      ),
      Recipe(
        imgPath: 'assets/keto-chicken.jpeg',
        recipeName: 'Keto Smothered Chicken Thighs',
        timeCook: 60,
        servings: 4,
        shortDesc:
            'Topped with bacon, mushrooms, green onions, and a creamy sauce, these chicken thighs are sure to become a favorite on your keto menu.',
        recipeDesc: 'Topped with bacon, mushrooms, green onions, and a creamy sauce, these chicken thighs are sure to become a favorite on your keto menu.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Skin-On, Bone-In Chicken Thighs',
            amount: 8,
            measurement: 'oz',
            imgPath: 'assets/recipes/chicken-thighs.png',
          ),
          Ingredients(
            ingredientName: 'Salt and Pepper',
            amount: 1,
            measurement: 'to taste',
            imgPath: 'assets/recipes/salt-pepper.png',
          ),
          Ingredients(
            ingredientName: 'Bacon',
            amount: 4,
            measurement: 'slices',
            imgPath: 'assets/recipes/bacon.png',
          ),
          Ingredients(
            ingredientName: 'Low-Sodium Chicken Broth',
            amount: 1 / 3,
            measurement: 'cup',
            imgPath: 'assets/recipes/chicken-broth.png',
          ),
          Ingredients(
            ingredientName: 'Heavy Whipping Cream',
            amount: 1 / 4,
            measurement: 'cup',
            imgPath: 'assets/recipes/heavy-whipping-cream.png',
          ),
          Ingredients(
            ingredientName: 'Green Onions',
            amount: 2,
            measurement: '',
            imgPath: 'assets/recipes/green-onion.png',
          ),
        ],
        directions: [
          'Preheat the oven to 400 degrees F (200 degrees C).',
          'Season chicken thighs on all sides with paprika, salt, and pepper.',
          'Cook bacon in a cast iron skillet or oven-safe pan over medium-high heat until browned, 4 to 5 minutes. Remove from skillet and drain on a paper towel-lined plate. Drain and discard excess grease from skillet.',
          'Return skillet to medium heat and cook chicken thighs, skin-side down, for 3 to 4 minutes. Flip chicken over and place skillet in the preheated oven.',
          'Bake until chicken thighs are no longer pink at the bone and juices run clear, about 30 minutes. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C). Remove chicken to a plate and cover with foil to keep warm. Remove all but 2 tablespoons drippings from skillet.',
          'Return skillet to the stove over medium-high heat. Pour in chicken broth while whisking up brown bits from the bottom of the skillet. Add mushrooms and cook until soft, about 3 to 4 minutes. Pour in heavy whipping cream and whisk together until lightly simmering, then reduce heat to medium-low. Season with salt and pepper, if necessary.',
          'Return chicken and any juices back into skillet; top with bacon and green onions. Serve immediately, spooning sauce over the chicken.',
        ],
      ),
      Recipe(
        imgPath: 'assets/turkey-brine.jpg',
        recipeName: 'Out of this World Turkey Brine',
        timeCook: 60,
        servings: 12,
        shortDesc:
            'Best brine for smoked turkey around. This recipe was given to me by my uncle. He is always smoking meat.',
        recipeDesc:
            'Best brine for smoked turkey around. This recipe was given to me by my uncle. He is always smoking meat.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Water Gallons',
            amount: 2,
            measurement: 'gallons',
            imgPath: 'assets/recipes/gallon-water.png',
          ),
          Ingredients(
            ingredientName: 'Salt',
            amount: 1.05,
            measurement: 'cups',
            imgPath: 'assets/recipes/salt.png',
          ),
          Ingredients(
            ingredientName: 'Minced Garlic',
            amount: 3,
            measurement: 'tbsp',
            imgPath: 'assets/recipes/minced-garlic.png',
          ),
          Ingredients(
            ingredientName: 'Ground Black Pepper',
            amount: 1,
            measurement: 'tbsp',
            imgPath: 'assets/recipes/ground-pepper.png',
          ),
          Ingredients(
            ingredientName: 'Worcestershire Sauce',
            amount: 1 / 4,
            measurement: 'cup',
            imgPath: 'assets/recipes/worcestershire-sauce.png',
          ),
          Ingredients(
            ingredientName: 'Brown Sugar',
            amount: 1 / 4,
            measurement: 'cup',
            imgPath: 'assets/recipes/brown-sugar.png',
          ),
        ],
        directions: [
          'In a food-grade large bucket or container large enough to hold your turkey, mix together the water, salt, garlic, pepper, Worcestershire sauce and brown sugar. Store in a refrigerator, and soak turkey for 2 days before smoking or roasting.',
        ],
      ),
      Recipe(
        imgPath: 'assets/bacon.jpg',
        recipeName: 'Bacon-Wrapped Little Smokies',
        timeCook: 1,
        servings: 48,
        shortDesc: 'One pound of bacon + one package of little smokey sausages + one cup brown sugar = the tastiest bacon-wrapped little smokies ever.',
        recipeDesc:
            'One pound of bacon + one package of little smokey sausages + one cup brown sugar = the tastiest bacon-wrapped little smokies ever. A popular party snack, these little smokies wrapped in bacon is always a crowd pleaser. And while this recipe makes a lot, it’s probably best to make extra, just in case.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Bacon',
            amount: 16,
            measurement: 'oz',
            imgPath: 'assets/recipes/bacon.png',
          ),
          Ingredients(
            ingredientName: 'Little Smokie Sausages',
            amount: 14,
            measurement: 'oz',
            imgPath: 'assets/recipes/little-smokies.png',
          ),
          Ingredients(
            ingredientName: 'Brown Sugar',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/recipes/brown-sugar.png',
          ),
        ],
        directions: [
          'Preheat oven to 350°F. Line a baking sheet or jelly roll pan with tin foil.',
          'Using kitchen scissors cut your bacon into thirds. There’s no need to cut each individual piece; cut the whole slab at one time.',
          'Wrap 1/3 of each bacon slice around a smokie and secure it with a toothpick. After you have wrapped all of the smokies, place them on the baking sheet and sprinkle brown sugar on top of each smokie.',
          'Bake sausages for 40-45 minutes or until the bacon is crispy and the brown sugar has melted.',
          'Serve immediately or keep warm in a crockpot. Makes around 48 smokies.',
        ],
      ),
    ];
  }
}