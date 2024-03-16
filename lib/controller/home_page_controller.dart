import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learners_app/constants.dart';

import '../model/home_page_model.dart';

class HomePageController extends ChangeNotifier{


  // to get api response of Home page data
  Future<TotalResponse?> getHomeData() async {
    var url = Uri.parse(AppConstants.homePageApi);
    try {
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {

        var jsData = jsonDecode(response.body);
        var result = TotalResponse.fromMap(jsData);

        return result;
      } else {
        throw Exception("Api data fetching Error");
      }
    } catch (e) {
      print("Exception occured $e");
    }
    return null;
  }

}