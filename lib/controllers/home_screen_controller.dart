import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/demo.dart';

class HomeScreenController extends ChangeNotifier{
  getData() async {
    try {
      var api = "https://api.tvmaze.com/shows";
      var url = Uri.parse(api);
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        // Parse the response body

        List result = jsonDecode(response.body);
        // List<ShowsDemo> showsdemoList =[];

        // result.forEach((element) {
        // showsdemoList.add( element );
        // });
        // print("===yes $showsdemoList");
        // var jsonData = ShowsDemo.fromJson(jsonDecode(response.body));
        //

        // return jsonData;
        return result;
      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception("Error occured");
    }
  }
}