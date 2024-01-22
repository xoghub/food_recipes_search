import 'dart:ffi';
import 'ingredient_result.dart';

class SearchByIngredient {
  String id;
  String title;
  String imageURL;
  Int likes;
  Int missedIngredientCount;
  Int usedIngredientCount;
  List<IngredientsResult> missedIngredients;
  List<IngredientsResult> usedIngredients;
/* missedIngredients
"id": 2011,
"amount": 1.0,
"unit": "Dash",
"name": "ground cloves",
"image": "https://spoonacular.com/cdn/ingredients_100x100/cloves.jpg"
*/

  SearchByIngredient(
      {required this.id,
      required this.imageURL,
      required this.title,
      required this.likes,
      required this.missedIngredientCount,
      required this.missedIngredients,
      required this.usedIngredientCount,
      required this.usedIngredients});

  factory SearchByIngredient.fromJson(json) {
    return SearchByIngredient(
      id: json['id'],
      imageURL: json['image'] as String,
      title: json['title'] as String,
      likes: json['likers'] as Int,
      usedIngredientCount: json['usedIngredientCount'] as Int,
      missedIngredientCount: json['missedIngredientCount'] as Int,
      missedIngredients: (json['missedIngredients'] as List<dynamic>?)!
          .map((e) => IngredientsResult.fromJson(e))
          .toList(),
      usedIngredients: (json['usedIngredients'] as List<dynamic>?)!
          .map((e) => IngredientsResult.fromJson(e))
          .toList(),
    );
  }

  // toJson() => {
  //   ''
  // }
}
