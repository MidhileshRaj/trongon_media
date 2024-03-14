import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/controllers/cast_details_page.dart';

import '../utils/widgets/custom_cst_screen.dart';

class Viewcast extends StatelessWidget {
  const Viewcast({super.key, required this.id});

  final id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder(
            future: Provider.of<CastDetailsController>(context, listen: false)
                .getCastDetails(id),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator(color: Colors.white,);
              }
              if (snapshot.hasError) {
                return const Text("No data...");
              }
              if (snapshot.hasData) {


                return ListView.builder(itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    var data = snapshot.data![index];
                    return CustomCastDetails(
                      image: data["person"]["image"]["medium"].toString(),
                      name: data["person"]["name"],
                      charactor: data["character"]["name"],
                      gender: data["person"]["gender"],
                      dob: data["person"]["birthday"],
                      url: data["person"]["url"],
                      characterImage1: data["character"]["image"]["medium"],
                      characterImage2: data["character"]["image"]["original"],);
                  },);
              } else {
                return const Text("Something went wrong");
              }
            },
          )),
    );
  }
}