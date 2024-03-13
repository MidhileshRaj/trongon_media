import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task_app/models/demo.dart';


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  Future<ShowsDemo> getData() async {
    try {
      var api = "https://api.tvmaze.com/shows";
      var url = Uri.parse(api);
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        // Parse the response body
        print("===${response.body}");
        var jsonData = ShowsDemo.fromJson(jsonDecode(response.body));

        print("===$jsonData=====");
        return jsonData;

      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception("Error occured");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Error Fetching Data"));
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Has Data"));
          } else {
            return const Center(child: Text("Something went wrong"));
          }
        },
      ),
    );
  }
}
