import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/checking/user_model.dart';

class PassengerService {
  static Future<PassengersData> getPassenger() async {
    final response = await rootBundle.loadString('json/mydata.json');
    return passengersDataFromJson(response);
  }
}
