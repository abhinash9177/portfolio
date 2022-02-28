import 'package:flutter/services.dart';
import 'package:portfolio/checking/mymodel.dart';

class MyService {
  static Future<MyModel> getPassenger() async {
    final response = await rootBundle.loadString('json/about.json');
    return myModelFromJson(response);
  }
}
