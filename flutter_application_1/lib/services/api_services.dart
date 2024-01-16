import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


class ApiService{
  ApiService._instantiate();
  static final ApiService instance = ApiService._instantiate();

  // Add base URL for api enpoint and api_key

  final String _baseURL = 'api.spooncular.com';
  static const String API_KEY = 'd53e942538294f65a61344e46eaafc33';

}