import 'dart:convert';

import 'feeds_data_model.dart';

class TotalResponse4 {
  final int status;
  final String message;
  final List<FeedPageData> data;

  TotalResponse4({
    required this.status,
    required this.message,
    required this.data,
  });

  factory TotalResponse4.fromJson(String str) => TotalResponse4.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TotalResponse4.fromMap(Map<String, dynamic> json) => TotalResponse4(
    status: json["status"],
    message: json["message"],
    data: List<FeedPageData>.from(json["data"].map((x) => FeedPageData.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toMap())),
  };
}

