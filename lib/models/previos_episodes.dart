
import 'dart:convert';

class Previousepisode {
  String href;

  Previousepisode({
    required this.href,
  });

  factory Previousepisode.fromRawJson(String str) => Previousepisode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Previousepisode.fromJson(Map<String, dynamic> json) => Previousepisode(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}
