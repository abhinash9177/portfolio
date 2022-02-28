// To parse this JSON data, do
//
//     final passengersData = passengersDataFromJson(jsonString);

import 'dart:convert';

PassengersData passengersDataFromJson(String str) =>
    PassengersData.fromJson(json.decode(str));

String passengersDataToJson(PassengersData data) => json.encode(data.toJson());

class PassengersData {
  PassengersData({
    required this.data,
  });

  List<Passenger?> data;

  factory PassengersData.fromJson(Map<String, dynamic> json) => PassengersData(
      data:
          List<Passenger>.from(json["data"].map((x) => Passenger.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x!.toJson())),
      };
}

class Passenger {
  Passenger({
    required this.id,
    required this.name,
    required this.trips,
    required this.airline,
    required this.v,
  });

  String? id;
  String? name;
  int? trips;
  List<Airline?> airline;
  int? v;

  factory Passenger.fromJson(Map<String, dynamic> json) => Passenger(
        id: json["_id"] as String,
        name: json["name"] as String,
        trips: json["trips"],
        airline:
            List<Airline>.from(json["airline"].map((x) => Airline.fromJson(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "trips": trips,
        "airline": List<dynamic>.from(airline.map((x) => x!.toJson())),
        "__v": v,
      };
}

class Airline {
  Airline({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
    required this.slogan,
    required this.headQuaters,
    required this.website,
    required this.established,
  });

  int? id;
  String? name;
  String? country;
  String? logo;
  String? slogan;
  String? headQuaters;
  String? website;
  String? established;

  factory Airline.fromJson(Map<String, dynamic> json) => Airline(
        id: json["id"] as int,
        name: json["name"] as String,
        country: json["country"] as String,
        logo: json["logo"] as String,
        slogan: json["slogan"] as String,
        headQuaters: json["head_quaters"] as String,
        website: json["website"] as String,
        established: json["established"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "country": country,
        "logo": logo,
        "slogan": slogan,
        "head_quaters": headQuaters,
        "website": website,
        "established": established,
      };
}
