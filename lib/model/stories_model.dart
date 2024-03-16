
import 'dart:convert';

class Story {
  final String id;
  final String title;
  final DateTime date;
  final String url;

  Story({
    required this.id,
    required this.title,
    required this.date,
    required this.url,
  });

  factory Story.fromJson(String str) => Story.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Story.fromMap(Map<String, dynamic> json) => Story(
    id: json["id"],
    title: json["title"],
    date: DateTime.parse(json["date"]),
    url: json["url"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "url": url,
  };
}
