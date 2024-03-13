import 'dart:convert';

import 'enums/codes.dart';
import 'enums/name.dart';
import 'enums/timezone.dart';


class Country {
  Name? name;
  Code? code;
  Timezone? timezone;

  Country({
    required this.name,
    required this.code,
    required this.timezone,
  });

  factory Country.fromRawJson(String str) => Country.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    name: nameValues.map[json["name"]],
    code: codeValues.map[json["code"]],
    timezone: timezoneValues.map[json["timezone"]],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "code": codeValues.reverse[code],
    "timezone": timezoneValues.reverse[timezone],
  };
}