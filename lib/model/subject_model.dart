
import 'dart:convert';

class Subject {
  final String id;
  final String title;
  final String courseId;
  final String order;
  final String thumbnail;
  final String background;
  final String icon;
  final String free;
  final dynamic instructorId;

  Subject({
    required this.id,
    required this.title,
    required this.courseId,
    required this.order,
    required this.thumbnail,
    required this.background,
    required this.icon,
    required this.free,
    required this.instructorId,
  });

  factory Subject.fromJson(String str) => Subject.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Subject.fromMap(Map<String, dynamic> json) => Subject(
    id: json["id"],
    title: json["title"],
    courseId: json["course_id"],
    order: json["order"],
    thumbnail: json["thumbnail"],
    background: json["background"],
    icon: json["icon"],
    free: json["free"],
    instructorId: json["instructor_id"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "course_id": courseId,
    "order": order,
    "thumbnail": thumbnail,
    "background": background,
    "icon": icon,
    "free": free,
    "instructor_id": instructorId,
  };
}
