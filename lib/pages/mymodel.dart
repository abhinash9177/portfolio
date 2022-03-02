// To parse this JSON data, do
//
//     final myModel = myModelFromJson(jsonString);

import 'dart:convert';

MyModel myModelFromJson(String str) => MyModel.fromJson(json.decode(str));

String myModelToJson(MyModel data) => json.encode(data.toJson());

class MyModel {
  MyModel({
    required this.data,
  });

  List<Data?> data;

  factory MyModel.fromJson(Map<String, dynamic> json) => MyModel(
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x!.toJson())),
      };
}

class Data {
  Data({
    required this.id,
    required this.title,
    required this.myname,
    required this.mainImage,
    required this.underLogoTitle,
    required this.underLogoRow,
    required this.discription,
    required this.bottomtag,
    required this.bottumlogo,
    required this.aboveCardName,
    required this.bottumCard,
  });

  String? id;
  String? title;
  String? myname;
  String? mainImage;
  String? underLogoTitle;
  List<UnderLogoRow?> underLogoRow;
  String? discription;
  List<Bottomtag?> bottomtag;
  List<Bottumlogo?> bottumlogo;
  String? aboveCardName;
  List<BottumCard?> bottumCard;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        title: json["title"],
        myname: json["myname"],
        mainImage: json["main_image"],
        underLogoTitle: json["under_logo_title"],
        underLogoRow: List<UnderLogoRow>.from(
            json["under_logo_row"].map((x) => UnderLogoRow.fromJson(x))),
        discription: json["discription"],
        bottomtag: List<Bottomtag>.from(
            json["bottum_tag"].map((x) => Bottomtag.fromJson(x))),
        bottumlogo: List<Bottumlogo>.from(
            json["bottum_logo"].map((x) => Bottumlogo.fromJson(x))),
        aboveCardName: json["above_card_name"],
        bottumCard: List<BottumCard>.from(
            json["bottum_card"].map((x) => BottumCard.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "myname": myname,
        "main_image": mainImage,
        "under_logo_title": underLogoTitle,
        "under_logo_row":
            List<dynamic>.from(underLogoRow.map((x) => x!.toJson())),
        "discription": discription,
        "bottum_tag": List<dynamic>.from(bottomtag.map((x) => x!.toJson())),
        "bottum_logo": List<dynamic>.from(bottumlogo.map((x) => x!.toJson())),
        "above_card_name": aboveCardName,
        "bottum_card": List<dynamic>.from(bottumCard.map((x) => x!.toJson())),
      };
}

class UnderLogoRow {
  UnderLogoRow({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory UnderLogoRow.fromJson(Map<String, dynamic> json) => UnderLogoRow(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Bottomtag {
  Bottomtag({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Bottomtag.fromJson(Map<String, dynamic> json) => Bottomtag(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Bottumlogo {
  Bottumlogo({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  int id;
  String name;
  String imageUrl;

  factory Bottumlogo.fromJson(Map<String, dynamic> json) => Bottumlogo(
        id: json["id"],
        name: json["name"],
        imageUrl: json["image_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image_url": imageUrl,
      };
}

class BottumCard {
  BottumCard(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.details,
      required this.time});

  int id;
  String name;
  String imageUrl;
  String details;
  String time;

  factory BottumCard.fromJson(Map<String, dynamic> json) => BottumCard(
        id: json["id"],
        name: json["name"],
        imageUrl: json["image_url"],
        details: json["details"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image_url": imageUrl,
        "details": details,
        "time": time,
      };
}
