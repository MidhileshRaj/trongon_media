

import 'dart:convert';

class Rating {
  double average;

  Rating({
    required this.average,
  });

  factory Rating.fromRawJson(String str) => Rating.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    average: json["average"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "average": average,
  };
}
