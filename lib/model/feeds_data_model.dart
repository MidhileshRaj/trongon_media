
import 'dart:convert';

import 'enum/feeds_model_enum.dart';

class FeedPageData {
  final String? feedId;
  final String? title;
  final String? content;
  final String? image;
  final String? categoryId;
  final dynamic courseId;
  final FileType fileType;
  final String? videoUrl;
  final String? thumbnail;
  final DateTime updatedOn;
  final Category category;
  final String? file;
  final String? videoThumbnail;
  final int isBookmarked;
  final int isLiked;
  final String? date;
  final int likeCount;

  FeedPageData({
    required this.feedId,
    required this.title,
    required this.content,
    required this.image,
    required this.categoryId,
    required this.courseId,
    required this.fileType,
    required this.videoUrl,
    required this.thumbnail,
    required this.updatedOn,
    required this.category,
    required this.file,
    required this.videoThumbnail,
    required this.isBookmarked,
    required this.isLiked,
    required this.date,
    required this.likeCount,
  });

  factory FeedPageData.fromJson(String str) => FeedPageData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeedPageData.fromMap(Map<String, dynamic> json) => FeedPageData(
    feedId: json["feed_id"],
    title: json["title"],
    content: json["content"],
    image: json["image"],
    categoryId: json["category_id"],
    courseId: json["course_id"],
    fileType: fileTypeValues.map[json["file_type"]]!,
    videoUrl: json["video_url"],
    thumbnail: json["thumbnail"],
    updatedOn: DateTime.parse(json["updated_on"]),
    category: categoryValues.map[json["category"]]!,
    file: json["file"],
    videoThumbnail: json["video_thumbnail"],
    isBookmarked: json["is_bookmarked"],
    isLiked: json["is_liked"],
    date: json["date"],
    likeCount: json["like_count"],
  );

  Map<String, dynamic> toMap() => {
    "feed_id": feedId,
    "title": title,
    "content": content,
    "image": image,
    "category_id": categoryId,
    "course_id": courseId,
    "file_type": fileTypeValues.reverse[fileType],
    "video_url": videoUrl,
    "thumbnail": thumbnail,
    "updated_on": updatedOn.toIso8601String(),
    "category": categoryValues.reverse[category],
    "file": file,
    "video_thumbnail": videoThumbnail,
    "is_bookmarked": isBookmarked,
    "is_liked": isLiked,
    "date": date,
    "like_count": likeCount,
  };
}
