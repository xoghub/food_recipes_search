import 'package:dio/dio.dart';
import 'package:flutter_application_1/model/failure.dart';
import 'package:flutter_application_1/model/food_type.dart';
import 'package:flutter_application_1/api/api_key.dart';
import 'get_recipe_info.dart';

class GetHomeRecipes {
  var key = ApiKey.keys;
  // ignore: non_constant_identifier_names

  final dio = Dio();

  Future<FoodTypeList> getRecipes(int no) async {
    var url = BASE_URL + "/random?number=$no" + '&apiKey=' + key;
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      return FoodTypeList.fromJson(response.data['recipes']);
    } else if (response.statusCode == 401) {
      throw Failure(code: 401, message: response.data['message']);
    } else {
      print(response.statusCode);
      throw Failure(
          code: response.statusCode!, message: response.statusMessage!);
    }
  }
}
