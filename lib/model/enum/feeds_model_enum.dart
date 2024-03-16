
import 'feeds_enum_mmodel.dart';

enum Category {
  EXAMS,
  NEET_EXAM_2023
}

final categoryValues = EnumValues({
  "Exams": Category.EXAMS,
  "NEET EXAM 2023": Category.NEET_EXAM_2023
});

enum FileType {
  IMAGE
}

final fileTypeValues = EnumValues({
  "image": FileType.IMAGE
});
