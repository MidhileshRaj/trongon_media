
import 'dart:convert';

class Course {
  final String id;
  final String title;
  final String description;
  final String shortDescription;
  final String thumbnail;
  final String price;
  final dynamic isFreeCourse;
  final int rating;
  final int numberOfRatings;
  final String totalEnrollment;
  final String duration;
  final int totalLessons;
  final String shareableLink;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.shortDescription,
    required this.thumbnail,
    required this.price,
    required this.isFreeCourse,
    required this.rating,
    required this.numberOfRatings,
    required this.totalEnrollment,
    required this.duration,
    required this.totalLessons,
    required this.shareableLink,
  });

  factory Course.fromJson(String str) => Course.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Course.fromMap(Map<String, dynamic> json) => Course(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    shortDescription: json["short_description"],
    thumbnail: json["thumbnail"],
    price: json["price"],
    isFreeCourse: json["is_free_course"],
    rating: json["rating"],
    numberOfRatings: json["number_of_ratings"],
    totalEnrollment: json["total_enrollment"],
    duration: json["duration"],
    totalLessons: json["total_lessons"],
    shareableLink: json["shareable_link"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "description": description,
    "short_description": shortDescription,
    "thumbnail": thumbnail,
    "price": price,
    "is_free_course": isFreeCourse,
    "rating": rating,
    "number_of_ratings": numberOfRatings,
    "total_enrollment": totalEnrollment,
    "duration": duration,
    "total_lessons": totalLessons,
    "shareable_link": shareableLink,
  };
}
