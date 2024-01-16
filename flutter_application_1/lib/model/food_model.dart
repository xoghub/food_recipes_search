import 'package:http/http.dart' as http;

class Food {
  late final int id;
  final String title, imgURL;
  
  Food({required this.id, required this.title, required this.imgURL});
  //This class has an ID which allows us to get the Recipes and other info such as title and Image URL
  /*Factory Constructor Meal.fromMap parses the decoded JSON data to get the values of the meal, and returns the Meal Object*/
  factory Food.fromMap(Map<String, dynamic> map) {
    //Food object
    return Food(
    id: map['id'],
    title: map['title'],
    imgURL: 'https://spoonacular.com/recipeImages/' + map['image'],
    );
  }
}