import 'dart:convert';

import 'course_data_model.dart';

class TotalResponsePage2 {
  final int status;
  final String message;
  final CoursePageData data;

  TotalResponsePage2({
    required this.status,
    required this.message,
    required this.data,
  });

  factory TotalResponsePage2.fromJson(String str) => TotalResponsePage2.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TotalResponsePage2.fromMap(Map<String, dynamic> json) => TotalResponsePage2(
    status: json["status"],
    message: json["message"],
    data: CoursePageData.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status,
    "message": message,
    "data": data.toMap(),
  };
}
