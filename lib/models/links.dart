
import 'dart:convert';

import 'previos_episodes.dart';


class Links {
  Previousepisode self;
  Previousepisode previousepisode;
  Previousepisode nextepisode;

  Links({
    required this.self,
    required this.previousepisode,
    required this.nextepisode,
  });

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: Previousepisode.fromJson(json["self"]),
    previousepisode: Previousepisode.fromJson(json["previousepisode"]),
    nextepisode: Previousepisode.fromJson(json["nextepisode"]),
  );

  Map<String, dynamic> toJson() => {
    "self": self.toJson(),
    "previousepisode": previousepisode.toJson(),
    "nextepisode": nextepisode.toJson(),
  };
}

