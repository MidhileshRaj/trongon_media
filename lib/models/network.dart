import 'dart:convert';

import 'country_model.dart';


class Network {
  int id;
  String name;
  Country country;
  String officialSite;

  Network({
    required this.id,
    required this.name,
    required this.country,
    required this.officialSite,
  });

  factory Network.fromRawJson(String str) => Network.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Network.fromJson(Map<String, dynamic> json) => Network(
    id: json["id"],
    name: json["name"],
    country: Country.fromJson(json["country"]),
    officialSite: json["officialSite"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "country": country.toJson(),
    "officialSite": officialSite,
  };
}
