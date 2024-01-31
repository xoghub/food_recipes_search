import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_application_1/api/api_key.dart';

class Receipt {
  final String apiKey =
      ApiKey.keys; // Import the ApiKey class from api_key.dart
  // f2802fadb2694bf2ac76e9040ba9fee1

  Future<Map<String, dynamic>> getRandomReceipt() async {
    final response = await http.get(Uri.parse(
        'https://api.spoonacular.com/recipes/random?number=30&apiKey=$apiKey'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load random receipt');
    }
  }
}
