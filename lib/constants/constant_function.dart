import 'dart:convert';

import 'package:http/http.dart' as http;

class ConstantFunction {
  static Future<List<Map<String, dynamic>>> getResponse(
      String findrecipe) async {
    const String id = '962efda7';
    const String key = '75937dd5a9e296587a012fe4308be412';
    // String search = findrecipe;
    String api =
        'https://api.edamam.com/search?q=$findrecipe&app_id=$id&app_key=$key&from=0&to=3&calories=591-722&health=alcohol-free';

    final response = await http.get(Uri.parse(api));
    List<Map<String, dynamic>> recipes = [];
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      if (data['hits'] != null) {
        for (var hit in data['hits']) {
          recipes.add(hit['recipe']);
        }
      }
      return recipes;
    }
    return recipes;
  }
}
//https://api.edamam.com/search?q=$findrecipe&app_id=$id&app_key=$key&from=0&to=3&calories=591-722&health=alcohol-free
//https://api.edamam.com/search?q=chicken&app_id=962efda7&app_key=75937dd5a9e296587a012fe4308be412&from=0&to=7&calories=591-722&health=alcohol-free