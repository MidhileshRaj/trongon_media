
import 'dart:convert';

class Userdata {
  final String id;
  final String userId;
  final String name;
  final String phone;
  final String deviceId;
  final String deviceIdMessage;
  final String courseId;
  final bool isPurchased;
  final String courseName;
  final String batchName;
  final String batchId;
  final String image;
  final String queryNumber;
  final String instContactPhone;
  final String instContactEmail;
  final String instContactAddress;
  final String privacyPolicy;
  final String dynamicLink;
  final String information;
  final String androidVersion;
  final String iosVersion;
  final String showSwitchCourse;
  final int showAddLiveClass;
  final String showExam;
  final String showPractice;
  final String showMaterial;
  final int showExternalExam;
  final String zoomId;
  final String zoomPassword;
  final String zoomApiKey;
  final String zoomSecretKey;
  final String zoomWebDomain;

  Userdata({
    required this.id,
    required this.userId,
    required this.name,
    required this.phone,
    required this.deviceId,
    required this.deviceIdMessage,
    required this.courseId,
    required this.isPurchased,
    required this.courseName,
    required this.batchName,
    required this.batchId,
    required this.image,
    required this.queryNumber,
    required this.instContactPhone,
    required this.instContactEmail,
    required this.instContactAddress,
    required this.privacyPolicy,
    required this.dynamicLink,
    required this.information,
    required this.androidVersion,
    required this.iosVersion,
    required this.showSwitchCourse,
    required this.showAddLiveClass,
    required this.showExam,
    required this.showPractice,
    required this.showMaterial,
    required this.showExternalExam,
    required this.zoomId,
    required this.zoomPassword,
    required this.zoomApiKey,
    required this.zoomSecretKey,
    required this.zoomWebDomain,
  });

  factory Userdata.fromJson(String str) => Userdata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Userdata.fromMap(Map<String, dynamic> json) => Userdata(
    id: json["id"],
    userId: json["user_id"],
    name: json["name"],
    phone: json["phone"],
    deviceId: json["device_id"],
    deviceIdMessage: json["device_id_message"],
    courseId: json["course_id"],
    isPurchased: json["is_purchased"],
    courseName: json["course_name"],
    batchName: json["batch_name"],
    batchId: json["batch_id"],
    image: json["image"],
    queryNumber: json["query_number"],
    instContactPhone: json["inst_contact_phone"],
    instContactEmail: json["inst_contact_email"],
    instContactAddress: json["inst_contact_address"],
    privacyPolicy: json["privacy_policy"],
    dynamicLink: json["dynamic_link"],
    information: json["information"],
    androidVersion: json["android_version"],
    iosVersion: json["ios_version"],
    showSwitchCourse: json["show_switch_course"],
    showAddLiveClass: json["show_add_live_class"],
    showExam: json["show_exam"],
    showPractice: json["show_practice"],
    showMaterial: json["show_material"],
    showExternalExam: json["show_external_exam"],
    zoomId: json["zoom_id"],
    zoomPassword: json["zoom_password"],
    zoomApiKey: json["zoom_api_key"],
    zoomSecretKey: json["zoom_secret_key"],
    zoomWebDomain: json["zoom_web_domain"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "user_id": userId,
    "name": name,
    "phone": phone,
    "device_id": deviceId,
    "device_id_message": deviceIdMessage,
    "course_id": courseId,
    "is_purchased": isPurchased,
    "course_name": courseName,
    "batch_name": batchName,
    "batch_id": batchId,
    "image": image,
    "query_number": queryNumber,
    "inst_contact_phone": instContactPhone,
    "inst_contact_email": instContactEmail,
    "inst_contact_address": instContactAddress,
    "privacy_policy": privacyPolicy,
    "dynamic_link": dynamicLink,
    "information": information,
    "android_version": androidVersion,
    "ios_version": iosVersion,
    "show_switch_course": showSwitchCourse,
    "show_add_live_class": showAddLiveClass,
    "show_exam": showExam,
    "show_practice": showPractice,
    "show_material": showMaterial,
    "show_external_exam": showExternalExam,
    "zoom_id": zoomId,
    "zoom_password": zoomPassword,
    "zoom_api_key": zoomApiKey,
    "zoom_secret_key": zoomSecretKey,
    "zoom_web_domain": zoomWebDomain,
  };
}
