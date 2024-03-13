
import 'dart:convert';

import 'enums/day.dart';
import 'enums/time.dart';


class Schedule {
  Time? time;
  List<Day> days;

  Schedule({
    required this.time,
    required this.days,
  });

  factory Schedule.fromRawJson(String str) => Schedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
    time: timeValues.map[json["time"]],
    days: List<Day>.from(json["days"].map((x) => dayValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "time": timeValues.reverse[time],
    "days": List<dynamic>.from(days.map((x) => dayValues.reverse[x])),
  };
}
