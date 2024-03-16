import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learners_app/constants.dart';

import '../model/course_page_model.dart';

class CoursePageController extends ChangeNotifier{
  Future<TotalResponsePage2?> getData() async {
    var url = Uri.parse(AppConstants.coursePageApi);
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        var result = TotalResponsePage2.fromMap(json);
        return result;
      } else {
        throw Exception("Error while fetching Data");
      }
    } catch (e) {
      print("Exception $e");
    }
  }

}