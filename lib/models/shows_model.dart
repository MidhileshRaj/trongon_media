


import 'dart:convert';

import 'country_model.dart';
import 'enums/genre.dart';
import 'enums/languages.dart';
import 'enums/status.dart';
import 'enums/types.dart';
import 'externals.dart';
import 'images.dart';
import 'links.dart';
import 'network.dart';
import 'rating.dart';
import 'schedules.dart';

class Shows {
  int id;
  String url;
  String name;
  Type? type;
  Language? language;
  List<Genre> genres;
  Status? status;
  int runtime;
  int averageRuntime;
  DateTime premiered;
  DateTime ended;
  String officialSite;
  Schedule schedule;
  Rating rating;
  int weight;
  Network network;
  Network webChannel;
  Country dvdCountry;
  Externals externals;
  Image image;
  String summary;
  int updated;
  Links links;

  Shows({
    required this.id,
    required this.url,
    required this.name,
    required this.type,
    required this.language,
    required this.genres,
    required this.status,
    required this.runtime,
    required this.averageRuntime,
    required this.premiered,
    required this.ended,
    required this.officialSite,
    required this.schedule,
    required this.rating,
    required this.weight,
    required this.network,
    required this.webChannel,
    required this.dvdCountry,
    required this.externals,
    required this.image,
    required this.summary,
    required this.updated,
    required this.links,
  });

  factory Shows.fromRawJson(String str) => Shows.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Shows.fromJson(Map<String, dynamic> json) => Shows(
    id: json["id"],
    url: json["url"],
    name: json["name"],
    type: typeValues.map[json["type"]],
    language: languageValues.map[json["language"]],
    genres: List<Genre>.from(json["genres"].map((x) => genreValues.map[x])),
    status: statusValues.map[json["status"]],
    runtime: json["runtime"],
    averageRuntime: json["averageRuntime"],
    premiered: DateTime.parse(json["premiered"]),
    ended: DateTime.parse(json["ended"]),
    officialSite: json["officialSite"],
    schedule: Schedule.fromJson(json["schedule"]),
    rating: Rating.fromJson(json["rating"]),
    weight: json["weight"],
    network: Network.fromJson(json["network"]),
    webChannel: Network.fromJson(json["webChannel"]),
    dvdCountry: Country.fromJson(json["dvdCountry"]),
    externals: Externals.fromJson(json["externals"]),
    image: Image.fromJson(json["image"]),
    summary: json["summary"],
    updated: json["updated"],
    links: Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "name": name,
    "type": typeValues.reverse[type],
    "language": languageValues.reverse[language],
    "genres": List<dynamic>.from(genres.map((x) => genreValues.reverse[x])),
    "status": statusValues.reverse[status],
    "runtime": runtime,
    "averageRuntime": averageRuntime,
    "premiered": "${premiered.year.toString().padLeft(4, '0')}-${premiered.month.toString().padLeft(2, '0')}-${premiered.day.toString().padLeft(2, '0')}",
    "ended": "${ended.year.toString().padLeft(4, '0')}-${ended.month.toString().padLeft(2, '0')}-${ended.day.toString().padLeft(2, '0')}",
    "officialSite": officialSite,
    "schedule": schedule.toJson(),
    "rating": rating.toJson(),
    "weight": weight,
    "network": network.toJson(),
    "webChannel": webChannel.toJson(),
    "dvdCountry": dvdCountry.toJson(),
    "externals": externals.toJson(),
    "image": image.toJson(),
    "summary": summary,
    "updated": updated,
    "_links": links.toJson(),
  };
}
