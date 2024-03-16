
import 'dart:convert';

class AdBanner {
  final String id;
  final String image;
  final String link;

  AdBanner({
    required this.id,
    required this.image,
    required this.link,
  });

  factory AdBanner.fromJson(String str) => AdBanner.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdBanner.fromMap(Map<String, dynamic> json) => AdBanner(
    id: json["id"],
    image: json["image"],
    link: json["link"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "image": image,
    "link": link,
  };
}
