
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task_app/models/details_model.dart';

class DetailsPageControler extends ChangeNotifier{
  getDetails(String id) async {
    try {
      var api = "https://api.tvmaze.com/shows/$id";
      var url = Uri.parse(api);
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        // Parse the response body

        var jsonData = jsonDecode(response.body);

        return jsonData;


      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception("Error occured");
    }
  }
}