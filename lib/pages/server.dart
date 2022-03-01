import 'package:flutter/services.dart';
import 'package:portfolio/pages/mymodel.dart';

class MyService {
  static Future<MyModel> getdataFromJson(String field) async {
    final response = await rootBundle.loadString('json/$field.json');
    return myModelFromJson(response);
  }
}
