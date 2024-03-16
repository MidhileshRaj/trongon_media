import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:learners_app/constants.dart';
import 'package:learners_app/model/feeds_page_model.dart';

class FeedPageController extends ChangeNotifier{

 Future<TotalResponse4?> getFeedsData()async{
   var url = Uri.parse(AppConstants.feedsPageApi);
   try{
     http.Response response = await http.get(url);
     if(response.statusCode == 200){
      var json = jsonDecode(response.body);
      print("${json.runtimeType}");
      var result = TotalResponse4.fromMap(json);
      print(result);
      return result;

     }else{
       throw Exception("Some Error fetching Data");
     }
   }catch(e){
     print("Error occurred while api integrate $e");
   }

  }
}