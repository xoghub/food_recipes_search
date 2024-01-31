import 'package:dio/dio.dart';
import 'package:flutter_application_1/api/api_key.dart';
import 'package:flutter_application_1/model/equipment.dart';
import 'package:flutter_application_1/model/failure.dart';
import 'package:flutter_application_1/model/recipe.dart';

// ignore: constant_identifier_names
const BASE_URL = 'https://api.spoonacular.com/recipes/';
// ignore: constant_identifier_names
const EQUIPMENTS_PATH = '/equipmentWidget.json?';
// ignore: constant_identifier_names
const INFORMATION_PATH = '/information?';

class GetRecipeInfo {
  // ignore: non_constant_identifier_names
  var key = ApiKey.keys;

  final dio = Dio();

  Future<List<dynamic>> getRecipeInfo(String id) async {
    var infoUrl = BASE_URL + id + INFORMATION_PATH + '&apiKey=' + key;
    var equipmentUrl = BASE_URL + id + EQUIPMENTS_PATH + '&apiKey=' + key;

    Recipe racipeInfo;
    EquipmentsList equipmentList;
    final response = await Future.wait([
      dio.get(infoUrl),
      dio.get(equipmentUrl),
    ]);
    if (response[0].statusCode == 200) {
      racipeInfo = Recipe.fromJson(response[0].data);
    } else if (response[0].statusCode == 401) {
      throw Failure(code: 401, message: response[0].data['message']);
    } else {
      throw Failure(
          code: response[0].statusCode!, message: response[0].statusMessage!);
    }
    if (response[1].statusCode == 200) {
      equipmentList = EquipmentsList.fromJson(response[2].data['equipment']);
    } else if (response[2].statusCode == 401) {
      throw Failure(code: 401, message: response[2].data['message']);
    } else {
      throw Failure(
          code: response[2].statusCode!, message: response[2].statusMessage!);
    }

    return [
      racipeInfo,
      equipmentList,
    ];
  }
}
