import 'dart:convert';

class ScanModel {
  int id;
  String type;
  String value;

  ScanModel({
    required this.id,
    required this.type,
    required this.value,
  }){
    if (value.contains('http')) {
      type = 'http';
    } else {
      type = 'geo';
    }
  }

  factory ScanModel.fromRawJson(String str) =>
      ScanModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "value": value,
      };
}
