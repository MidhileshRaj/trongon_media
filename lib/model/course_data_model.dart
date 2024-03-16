import 'dart:convert';

import 'stories_model.dart';

import 'subject_model.dart';
import 'user_model.dart';

class CoursePageData {
  final Userdata userdata;
  final List<Story> stories;
  final List<dynamic> testimonial;
  final List<Subject> subjects;

  CoursePageData({
    required this.userdata,
    required this.stories,
    required this.testimonial,
    required this.subjects,
  });

  factory CoursePageData.fromJson(String str) =>
      CoursePageData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CoursePageData.fromMap(Map<String, dynamic> json) => CoursePageData(
        userdata: Userdata.fromMap(json["userdata"]),
        stories: List<Story>.from(json["stories"].map((x) => Story.fromMap(x))),
        testimonial: List<dynamic>.from(json["testimonial"].map((x) => x)),
        subjects:
            List<Subject>.from(json["subjects"].map((x) => Subject.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "userdata": userdata.toMap(),
        "stories": List<dynamic>.from(stories.map((x) => x.toMap())),
        "testimonial": List<dynamic>.from(testimonial.map((x) => x)),
        "subjects": List<dynamic>.from(subjects.map((x) => x.toMap())),
      };
}
