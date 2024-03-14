import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CastDetailsController extends ChangeNotifier {
  getCastDetails(String id) async {
   try{
     var api = "https://api.tvmaze.com/shows/$id/cast";
     var url = Uri.parse(api);
     http.Response response = await http.get(url);
     if(response.statusCode == 200) {
       var jsonData = jsonDecode(response.body);
       return jsonData;
     }else{
       throw Exception('Failed to load data: ${response.statusCode}');
     }
   }catch(e){
     throw Exception("Error $e");
   }

  }
}
