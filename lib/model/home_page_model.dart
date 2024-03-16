
import 'dart:convert';

import 'package:learners_app/model/home_data_model.dart';

class TotalResponse {
  final int status;
  final String message;
  final HomePageData data;

  TotalResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory TotalResponse.fromJson(String str) => TotalResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TotalResponse.fromMap(Map<String, dynamic> json) => TotalResponse(
    status: json["status"],
    message: json["message"],
    data: HomePageData.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status,
    "message": message,
    "data": data.toMap(),
  };
}
