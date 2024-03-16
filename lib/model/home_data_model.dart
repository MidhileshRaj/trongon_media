
import 'dart:convert';

import 'adbanner_mdeol.dart';
import 'course_model.dart';
import 'user_model.dart';

class HomePageData {
  final Userdata userdata;
  final List<dynamic> testimonial;
  final List<AdBanner> adBanner;
  final List<Course> topCourses;
  final List<Course> trendingCourses;
  final List<dynamic> demoVideos;
  final List<dynamic> demoQuizzes;
  final String currentAffairsImageUrl;
  final String showScholarshipRegistration;
  final String imageScholarshipRegistration;
  final String urlScholarshipRegistration;
  final String showScholarshipExam;
  final String imageScholarshipExam;
  final String urlScholarshipExam;

  HomePageData({
    required this.userdata,
    required this.testimonial,
    required this.adBanner,
    required this.topCourses,
    required this.trendingCourses,
    required this.demoVideos,
    required this.demoQuizzes,
    required this.currentAffairsImageUrl,
    required this.showScholarshipRegistration,
    required this.imageScholarshipRegistration,
    required this.urlScholarshipRegistration,
    required this.showScholarshipExam,
    required this.imageScholarshipExam,
    required this.urlScholarshipExam,
  });

  factory HomePageData.fromJson(String str) => HomePageData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HomePageData.fromMap(Map<String, dynamic> json) => HomePageData(
    userdata: Userdata.fromMap(json["userdata"]),
    testimonial: List<dynamic>.from(json["testimonial"].map((x) => x)),
    adBanner: List<AdBanner>.from(json["ad_banner"].map((x) => AdBanner.fromMap(x))),
    topCourses: List<Course>.from(json["top_courses"].map((x) => Course.fromMap(x))),
    trendingCourses: List<Course>.from(json["trending_courses"].map((x) => Course.fromMap(x))),
    demoVideos: List<dynamic>.from(json["demo_videos"].map((x) => x)),
    demoQuizzes: List<dynamic>.from(json["demo_quizzes"].map((x) => x)),
    currentAffairsImageUrl: json["current_affairs_image_url"],
    showScholarshipRegistration: json["show_scholarship_registration"],
    imageScholarshipRegistration: json["image_scholarship_registration"],
    urlScholarshipRegistration: json["url_scholarship_registration"],
    showScholarshipExam: json["show_scholarship_exam"],
    imageScholarshipExam: json["image_scholarship_exam"],
    urlScholarshipExam: json["url_scholarship_exam"],
  );

  Map<String, dynamic> toMap() => {
    "userdata": userdata.toMap(),
    "testimonial": List<dynamic>.from(testimonial.map((x) => x)),
    "ad_banner": List<dynamic>.from(adBanner.map((x) => x.toMap())),
    "top_courses": List<dynamic>.from(topCourses.map((x) => x.toMap())),
    "trending_courses": List<dynamic>.from(trendingCourses.map((x) => x.toMap())),
    "demo_videos": List<dynamic>.from(demoVideos.map((x) => x)),
    "demo_quizzes": List<dynamic>.from(demoQuizzes.map((x) => x)),
    "current_affairs_image_url": currentAffairsImageUrl,
    "show_scholarship_registration": showScholarshipRegistration,
    "image_scholarship_registration": imageScholarshipRegistration,
    "url_scholarship_registration": urlScholarshipRegistration,
    "show_scholarship_exam": showScholarshipExam,
    "image_scholarship_exam": imageScholarshipExam,
    "url_scholarship_exam": urlScholarshipExam,
  };
}